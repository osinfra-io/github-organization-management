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

  # Flatten Function
  # https://developer.hashicorp.com/terraform/language/functions/flatten

  # flatten ensures that this local value is a flat list of objects, rather
  # than a list of lists of objects.

  child_teams = { for child_team in flatten([

    # This will iterate over the teams map and return a list of maps based of the values of the child_teams list
    # that includes the team key and the child_team value.

    for team_key, team in var.teams : [
      for child_team in team.child_teams : {
        team       = team_key
        child_team = child_team
      }
    ]
  ]) : "${child_team.child_team}" => child_team }


  # This will iterate over the members list and create a map with the key being the user and the value being admin.

  members = {
    for user in var.members : user => "member"
  }

  # Merge Function
  # https://developer.hashicorp.com/terraform/language/functions/merge

  # This will merge the admins and members maps into a single map with the key being the user and the value being the role.

  users = merge(local.admins, local.members)
}
