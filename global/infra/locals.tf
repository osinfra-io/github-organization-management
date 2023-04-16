# Local Values
# https://www.terraform.io/language/values/locals

locals {

  # This will iterate over the admins list and create a map with the key being the user and the value being admin.

  admins = {
    for user in var.admins : user => "admin"
  }

  # This will iterate over the repositories map and create a map with the key being the repository name and the value being the
  # repository map if the repository map contains the key enable_branch_protection and the value is true.

  branch_protection = {
    for repository_key, repository in var.repositories : repository_key => repository if repository.enable_branch_protection
  }

  child_team_repositories = {

    # This will iterate over the team_children map and return a list of maps based of the values of the repositories list
    # that includes the team key.

    for repository in flatten([
      for team_child_key, team_child in var.team_children : [
        for repository in team_child.repositories : {
          team_child = team_child_key
          repository = repository
          permission = team_child.permission
        }
      ]
  ]) : "${repository.team_child}-${repository.repository}" => repository }

  # This will iterate over the members list and create a map with the key being the user and the value being admin.

  members = {
    for user in var.members : user => "member"
  }

  parent_team_repositories = {

    # This will iterate over the team_parents map and return a list of maps based of the values of the repositories list
    # that includes the team key.

    for repository in flatten([
      for team_parent_key, team_parent in var.team_parents : [
        for repository in team_parent.repositories : {
          team_parent = team_parent_key
          repository  = repository
          permission  = team_parent.permission
        }
      ]
  ]) : "${repository.team_parent}-${repository.repository}" => repository }

  # This will iterate over the team_parents map and create a map with the key being the team_parent name and the value being the
  # team_parent map if the team_parent map contains the key review_request_delegation and the value is true.

  review_request_delegation = {
    for team_parent_key, team_parent in var.team_parents : team_parent_key => team_parent if team_parent.review_request_delegation
  }

  # Merge Function
  # https://developer.hashicorp.com/terraform/language/functions/merge

  # This will merge the admins and members maps into a single map with the key being the user and the value being the role.

  users = merge(local.admins, local.members)
}
