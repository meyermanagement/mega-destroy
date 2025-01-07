#!/bin/bash
###############################################################
#
#  bin/resetScratchOrg.sh [org_alias] [stop_marker_number]
#
###############################################################
## JS - Refactored to sf from depricated sfdx - added devhub param - replaced param 2 and 3 - exit when arguments empty - 1/24/24 ##
## JS - Refactored to handle failing deployments and pickup on the failed deployment when given the same parameters- Added comments - 1/29/24 ##

# alter GIT configuration to use ".githooks" directory for this project.
git config core.hooksPath .githooks

## Required Method Inputs ##
org_alias=$1
current_dev_hub=$2

## Check For Org Alias Input - Exit if Blank ##
if [ -z "$1" ]
  then
    echo "An org alias is required as script parameter 1."
    exit 1
    #org_alias=$(sf config get target-org)
    #org_alias=$(sfdx config:list --json | jq .result -c | jq -r 'map(select(.key | contains("defaultusername")))[].value')
fi
echo org_alias is "$org_alias"

## Check For DevHub Alias Input - Exit if Blank ##
if [ -z "$2" ]
  then
    echo "A dev-hub alias is required as script parameter 2."
    exit 1
fi
echo current_dev_hub is "$current_dev_hub"

## Check if Org Alias exists already - If so, check with the user if this is a redeployment or overwrite - loop until the input is acceptable##
redeployment_v_overwrite=""
list_of_org_alias=$(sf org list);
if [[ $list_of_org_alias == *$org_alias* ]]; 
    then
      while [ "$redeployment_v_overwrite" != "d" ] && [ "$redeployment_v_overwrite" != "o" ];
      do
        echo "Org Alias provided is already in use. Is this for a failed deployment[d] or an org overwrite[o]? [d/o]?"
        read redeployment_v_overwrite
      done
fi

## Stop Marker will execute script until designated step - hard coded to 99 by default, which will delete temp file at end - if input given, will overwrite ##
stop_marker=99
if [ ! -z "$3" ]
  then 
    echo "Stop marker provided is $3"
    stop_marker="$3"
fi 

## Set temp directory and file name to store progress step marker - added devhub to tempfile name for uniqueness ## 
temp_dir=temp
progress_marker_filename=_buildprogressmarker_$org_alias+$current_dev_hub

## Create temp directory if does not exist ## 
if [ ! -d "$temp_dir" ]
  then
    mkdir "$temp_dir"
fi 

## If progress marker file for target org does not exist, create one with a value of 0 ##
if [ ! -f "$temp_dir/$progress_marker_filename" ]
  then
    echo 0 > "$temp_dir/$progress_marker_filename"
fi 

## If the progress marker file exists - this will set the variable to the existing value within the file ## 
progress_marker_value=$(<"$temp_dir/$progress_marker_filename")

## If the var for some reason is still null, set to 0 ##
if [ -z "$progress_marker_value" ]
  then
    progress_marker_value=0
fi

## If user selected redeploy - get the failed deployment step and skip to it - if no file step will be 0 from above -> ##
## -> Offer to switch to overwrite or exit the script ##
if [ "$redeployment_v_overwrite" == 'd' ]
  then
    if [ $progress_marker_value -eq 0 ]
      then
        while [ "$redeployment_v_overwrite" != "o" ] && [ "$redeployment_v_overwrite" != "e" ];
        do
        echo "No failed deployment file detected. Continue with overwrite[o] or exit[e]? [o/e]?"
        read redeployment_v_overwrite
        done
      else
        deleteTempFailFile="true"
    fi
fi

## If user selected overwrite - Delete any previous scratch org with same alias - updated to only fire if the alias was detected - was firing all the time ##
if [ "$redeployment_v_overwrite" == 'o' ]
  then
    sf org delete scratch --target-org $org_alias -p
    #sfdx force:org:delete -p -u $org_alias
    echo 1 > "$temp_dir/$progress_marker_filename"
    progress_marker_value=1
fi

## If user selected exit, quit the script ##
if [ "$redeployment_v_overwrite" == 'e' ]
  then
    exit 1
fi

## Clean up and prune the local GIT repo to remove stale branches that have been removed from GitHub ##
git remote prune origin

## Create new scratch org - if org alias is new, this will fire - if org alias is used, this will only fire if they select o - d will go straight to deployment ##
if [ 2 -gt "$progress_marker_value" ] && [ 2 -le "$stop_marker" ]
  then
    sf org create scratch -v $current_dev_hub -f config/project-scratch-def.json --set-default -y 10 -w 30 -a $org_alias
    #sfdx force:org:create --wait 30 --durationdays 10 --definitionfile config/project-scratch-def.json --setalias $org_alias
    echo 2 > "$temp_dir/$progress_marker_filename"
    progress_marker_value=2
fi

## Open the org ##
if [ 3 -gt "$progress_marker_value" ] && [ 3 -le "$stop_marker" ]
  then
    sf config set target-org $org_alias
    #sfdx config:set defaultusername=$org_alias
    echo 3 > "$temp_dir/$progress_marker_filename"
    progress_marker_value=3
fi

## Push source code to org - exit if any deployment fails- capture deployment step in temp file - prevent it from being deleted by default##
deploymentFailure="false"
if [ 6 -gt "$progress_marker_value" ] && [ 6 -le "$stop_marker" ]
  then
    ## Deploy and store result ##
    deployResult=$(sf project deploy start --concise -c -g -o $org_alias);
    if [[ $deployResult == *"Error"* ]]; 
      then
        deploymentFailure="true"
      else
        echo 6 > "$temp_dir/$progress_marker_filename"
        progress_marker_value=6
    fi
fi

## If deployment errors come back -> show message, print errors to file, show instructions for redeployment, change stopmarker so the file doesn't get deleted ##
if [ "$deploymentFailure" == "true" ]
  then
        printf $deployResult > "$temp_dir/$progress_marker_filename+Failure"
        printf "\nScript failed due to a failed deployment. Please address failures in \"$temp_dir/$progress_marker_filename\" and relaunch script with the same inputs.\n"
        read -p "Press [Enter] to exit."
        #in case global error handling gets added - we don't want the temp file to get deleted
        stop_marker=$progress_marker_value
        exit 1 
fi

# Run Apex Tests - JS CR - Depricated?
if [ 10 -gt "$progress_marker_value" ] && [ 10 -le "$stop_marker" ]
  then
    sf apex run test -w 5 --target-org $org_alias 
    echo 10 > "$temp_dir/$progress_marker_filename"
    progress_marker_value=10
fi

# Do all post deploy tasks and setup
if [ 11 -gt "$progress_marker_value" ] && [ 11 -le "$stop_marker" ]
  then
    ./bin/doPostDeploysAndSetup.sh $org_alias
    echo 11 > "$temp_dir/$progress_marker_filename"
    progress_marker_value=11
fi

# Do all post deploy tasks and setup
if [ 12 -gt "$progress_marker_value" ] && [ 12 -le "$stop_marker" ]
  then
    sf org open -u $org_alias
    echo 12 > "$temp_dir/$progress_marker_filename"
    progress_marker_value=12
fi

## Remove the temp file from deployment failures ##
if [ "$deleteTempFailFile" == "true" ]
  then
    rm "$temp_dir/$progress_marker_filename+Failure"
fi

# remove marker file only if the stop_marker is not being used
if [ 99 -eq "$stop_marker" ]
  then 
    rm "$temp_dir/$progress_marker_filename"
fi 