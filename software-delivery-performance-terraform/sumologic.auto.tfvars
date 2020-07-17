# Sumo Logic - SDP Terraform
# Configure Sumo Logic credentials and App installation options.

# Sumo Logic
sumo_access_id          = "<YOUR SUMO ACCESS ID>"         # Please replace <YOUR SUMO ACCESS ID> (including brackets) with your Sumo Access ID. https://help.sumologic.com/Manage/Security/Access-Keys
sumo_access_key         = "<YOUR SUMO ACCESS KEY>"        # Please replace <YOUR SUMO ACCESS KEY> (including brackets) with your Sumo Access KEY.
deployment              = "<YOUR SUMO DEPLOYMENT>"        # Please update with your deployment, refer: https://help.sumologic.com/APIs/General-API-Information/Sumo-Logic-Endpoints-and-Firewall-Security
sumo_api_endpoint       = "<YOUR SUMOLOGIC API ENDPOINT>" # Example: https://api.sumologic.com/api/ Please update with your sumologic api endpoint. Make sure the trailing "/" is present. Refer, https://help.sumologic.com/APIs/General-API-Information/Sumo-Logic-Endpoints-and-Firewall-Security
app_installation_folder = "Software Delivery Performance"                     # The Sumo Logic apps will be installed in a folder specified by this value under your personal folder in Sumo Logic.

# Sumo Logic Apps, Collection and Webhooks
install_jira_cloud      = "true"
install_jira_server     = "true"
install_bitbucket_cloud = "true"
install_opsgenie        = "true"
install_pagerduty       = "true"
install_github          = "true"
install_jenkins         = "true"

# Sumo Logic App source category
jira_cloud_sc      = "SDP/Jira/Cloud"
jira_server_sc     = "SDP/Jira/Server/Events"
bitbucket_sc       = "SDP/Bitbucket"
opsgenie_sc        = "SDP/Opsgenie"
pagerduty_sc       = "SDP/Pagerduty"
github_sc          = "SDP/Github"
jenkins_sc         = "SDP/Jenkins"

# install_opsgenie should be true for the below option install_sumo_to_opsgenie_webhook to be true. https://help.sumologic.com/Manage/Connections-and-Integrations/Webhook-Connections/Webhook_Connection_for_Opsgenie
install_sumo_to_opsgenie_webhook        = "false" # This feature is in Beta. To participate contact your Sumo account executive. You can modify the file sumo_to_opsgenie_webhook.json.tmpl for customizing payload.
install_sumo_to_jiracloud_webhook       = "true" # This feature is in Beta. To participate contact your Sumo account executive. You can modify the file sumo_to_jiracloud_webhook.json.tmpl for customizing payload.
install_sumo_to_jiraserver_webhook      = "false" # This feature is in Beta. To participate contact your Sumo account executive. You can modify the file sumo_to_jiraserver_webhook.json.tmpl for customizing payload.
install_sumo_to_jiraservicedesk_webhook = "false" # This feature is in Beta. To participate contact your Sumo account executive. You can modify the file sumo_to_jiraservicedesk_webhook.json.tmpl for customizing payload.
install_sumo_to_pagerduty_webhook = "true"