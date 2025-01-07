#!/bin/bash
org_alias=$1
if [ -z "$1" ]
  then
    echo "doPostDeploysAndSetup - No org_alias argument supplied"
    exit 1
    #org_alias=$(sfdx config:list --json | jq .result -c | jq -r 'map(select(.key | contains("defaultusername")))[].value')
fi
echo doPostDeploysAndSetup - org_alias is $org_alias

# exit script when any command fails
# set -e 

# Assign permission set to user
echo
echo
echo Switch default DX User to MEGA_History_Super_Admin permission set
sf apex run -o $org_alias -f scripts/apex/assignUserCurrentAdminToSuperAdminPermissionSet.apex


sleep 45 
