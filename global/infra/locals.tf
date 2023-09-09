# Local Values
# https://www.terraform.io/language/values/locals

locals {

  admins = {
    for user in var.admins : user => "admin"
  }

  branch_protections = {
    for repository_key, repository in var.repositories : repository_key => repository if repository.enable_branch_protection
  }

  child_team_repositories = {

    for repository in flatten([
      for team_child_key, team_child in var.team_children : [
        for repository in team_child.repositories : {
          team_child = team_child_key
          repository = repository
          permission = team_child.permission
        }
      ]
  ]) : "${repository.team_child}-${repository.repository}" => repository }

  datadog_webhooks = {
    for repository_key, repository in var.repositories : repository_key => repository if repository.enable_datadog_webhook
  }

  members = {
    for user in var.members : user => "member"
  }

  parent_team_repositories = {

    for repository in flatten([
      for team_parent_key, team_parent in var.team_parents : [
        for repository in team_parent.repositories : {
          team_parent = team_parent_key
          repository  = repository
          permission  = team_parent.permission
        }
      ]
  ]) : "${repository.team_parent}-${repository.repository}" => repository }

  review_request_delegations = {
    for team_parent_key, team_parent in var.team_parents : team_parent_key => team_parent if team_parent.review_request_delegation
  }

  users = merge(local.admins, local.members)
}
