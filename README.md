# Mega History App

An advanced, multi-functional Record and Field History Tracking app that addresses the limitations of current Salesforce history tracking and record event monitoring/auditing. Seemlessly combines out of the box field history tracking with custom field history and the ability to track create/delete/undelete events of child objects across multiple parent records.  Additional features include the ability to import your own history records, track objects that can't normally be history tracked(ie. AccountTeamMember, OpportunityContactRole), prioritize visibility of certain fields, see history timeline of child records, create/edit/delete custom history records, completely deployable configuration for CI/CD processes, and a user-freindly/guided configuration tool.

## Features

**Enhanced history tracking on objects.**:
* Track as many fields as desired, beyond Salesforce limits
* Track objects that you can't normally track, ie. AccountTeamMember, CampaignMember, OpportunityContactRole, etc...
* Prioritize & highlight specified fields

**View history of child records on parents**:
* CRUD History: See when child records were created, deleted, and undeleted on multiple parent records
* See Field History of child records on parent records
* See complete start to end timeline of child records
* Create different views based on profiles and/or record types

**Import history from external systems**:
* Flexible Import of data allows you to show your record history even when migrating data from one system into Salesforce
* Display with Salesforce standard history tracking in seamless/combined view
* Custom created date and created by field for historical data load to merge data with standard history

**Enhanced control/adjustment of history**:
* Create, Edit, and Delete events to import history/rectify data
* Supplement standarad history

**Seemless consolidation of custom field history with standard history tracking**:
* See custom history tracked records along with standard history tracked records
* Simply drop the MEGA History Related List Component on your Lightning Record Page and your standard history records will be available, without having to configure tracking.  Some objects don't allow Triggers, making custom history tracking unavailable, but you can still load custom history on these objects using the user interface or data loads.

**Deployable configuration.**: 
* Generate necessary triggers dynamically in production directly or through a deployment process.
* Custom Metadata types control record history views and tracking configuration so they also can be deployed if desired.
