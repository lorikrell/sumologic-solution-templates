#Sumo Logic SDP solution - This files has code to create FER's in Sumo Logic.

resource "sumologic_field_extraction_rule" "github_pr_fer" {
  count            = "${var.install_github}" ? 1 : 0
  name             = "Github Pull Request Terraform"
  scope            = "_sourceCategory=${var.github_sc} ${var.github_pull_request_fer_scope}"
  parse_expression = var.github_pull_request_fer_parse
  enabled          = true
}

resource "sumologic_field_extraction_rule" "jenkins_build_fer" {
  count            = "${var.install_jenkins}" ? 1 : 0
  name             = "Jenkins Build Terraform"
  scope            = "_sourceCategory=${var.jenkins_sc} ${var.jenkins_build_fer_scope}"
  parse_expression = var.jenkins_build_fer_parse
  enabled          = true
}

resource "sumologic_field_extraction_rule" "jenkins_deploy_fer" {
  count            = "${var.install_jenkins}" ? 1 : 0
  name             = "Jenkins Deploy Terraform"
  scope            = "_sourceCategory=${var.jenkins_sc} ${var.jenkins_deploy_fer_scope}"
  parse_expression = var.jenkins_deploy_fer_parse
  enabled          = true
}

resource "sumologic_field_extraction_rule" "opsgenie_alerts_fer" {
  count            = "${var.install_opsgenie}" ? 1 : 0
  name             = "Opsgenie Alerts Terraform"
  scope            = "_sourceCategory=${var.opsgenie_sc} ${var.opsgenie_alerts_fer_scope}"
  parse_expression = var.opsgenie_alerts_fer_parse
  enabled          = true
}

resource "sumologic_field_extraction_rule" "bitbucket_pr_fer" {
  count            = "${var.install_bitbucket_cloud}" ? 1 : 0
  name             = "Bitbucket Pull Request Terraform"
  scope            = "_sourceCategory=${var.bitbucket_sc} ${var.bitbucket_pull_request_fer_scope}"
  parse_expression = var.bitbucket_pull_request_fer_parse
  enabled          = true
}

resource "sumologic_field_extraction_rule" "bitbucket_build_fer" {
  count            = "${var.install_bitbucket_cloud}" ? 1 : 0
  name             = "Bitbucket Build Terraform"
  scope            = "_sourceCategory=${var.bitbucket_sc} ${var.bitbucket_build_fer_scope}"
  parse_expression = var.bitbucket_build_fer_parse
  enabled          = true
}

resource "sumologic_field_extraction_rule" "bitbucket_deploy_fer" {
  count            = "${var.install_bitbucket_cloud}" ? 1 : 0
  name             = "Bitbucket Deploy Terraform"
  scope            = "_sourceCategory=${var.bitbucket_sc} ${var.bitbucket_deploy_fer_scope}"
  parse_expression = var.bitbucket_deploy_fer_parse
  enabled          = true
}

resource "sumologic_field_extraction_rule" "jira_cloud_issues_fer" {
  count            = "${var.install_jira_cloud}" ? 1 : 0
  name             = "Jira Cloud Issues Terraform"
  scope            = "_sourceCategory=${var.jira_cloud_sc} ${var.jira_cloud_issues_fer_scope}"
  parse_expression = var.jira_cloud_issues_fer_parse
  enabled          = true
}

resource "sumologic_field_extraction_rule" "jira_server_issues_fer" {
  count            = "${var.install_jira_server}" ? 1 : 0
  name             = "Jira Server Issues Terraform"
  scope            = "_sourceCategory=${var.jira_server_sc} ${var.jira_server_issues_fer_scope}"
  parse_expression = var.jira_server_issues_fer_parse
  enabled          = true
}

resource "sumologic_field_extraction_rule" "pagerduty_alerts_fer" {
  count            = "${var.install_pagerduty}" ? 1 : 0
  name             = "Pagerduty Alerts Terraform"
  scope            = "_sourceCategory=${var.pagerduty_sc} ${var.pagerduty_alerts_fer_scope}"
  parse_expression = var.pagerduty_alerts_fer_parse
  enabled          = true
}