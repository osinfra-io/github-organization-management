# Local Values
# https://www.terraform.io/language/values/locals

locals {

  # This block of code creates a map of users and their roles.
  # It iterates over the `admins` variable and creates a key-value pair
  # in the `admins` map for each user, where the key is the user and
  # the value is the string "admin".

  admins = {
    for user in var.admins : user => "admin"
  }

  # This block of code creates a map of repositories that have branch protection enabled.
  # It iterates over the `var.repositories` variable and creates a key-value pair
  # in the `branch_protection` map for each repository that has `enable_branch_protection` set to true,
  # where the key is the repository key and the value is the repository object.

  branch_protection = {
    for repository_key, repository in var.repositories : repository_key => repository if repository.enable_branch_protection
  }

  child_team_repositories = {

    # This block of code creates a map of repositories and their associated team and permission values.
    # It uses a nested `for` loop to iterate over the `var.team_children` variable and create a flattened list of repositories.
    # For each repository in the flattened list, a key-value pair is created in the `repositories` map,
    # where the key is a unique identifier for each repository and the value is a map containing the `team_child`,
    # `repository`, and `permission` values.

    for repository in flatten([
      for team_child_key, team_child in var.team_children : [
        for repository in team_child.repositories : {
          team_child = team_child_key
          repository = repository
          permission = team_child.permission
        }
      ]
  ]) : "${repository.team_child}-${repository.repository}" => repository }

  # This block of code creates a map of users and their roles.
  # It iterates over the `var.members` variable and creates a key-value pair
  # in the `members` map for each user, where the key is the user and
  # the value is the string "member".

  members = {
    for user in var.members : user => "member"
  }

  parent_team_repositories = {

    # This block of code creates a map of repositories and their associated team and permission values.
    # It uses a nested `for` loop to iterate over the `var.team_parents` variable and create a flattened list of repositories.
    # For each repository in the flattened list, a key-value pair is created in the `repositories` map,
    # where the key is a unique identifier for each repository and the value is a map containing the `team_parent`,
    # `repository`, and `permission` values.

    for repository in flatten([
      for team_parent_key, team_parent in var.team_parents : [
        for repository in team_parent.repositories : {
          team_parent = team_parent_key
          repository  = repository
          permission  = team_parent.permission
        }
      ]
  ]) : "${repository.team_parent}-${repository.repository}" => repository }

  # This block of code creates a map of team parents that have review request delegation enabled.
  # It uses a `for` loop to iterate over the `var.team_parents` variable and create a filtered map of team parents.
  # For each team parent in the `var.team_parents` variable, a key-value pair is created in the `review_request_delegation` map,
  # where the key is the team parent key and the value is the team parent object, but only if the `review_request_delegation` attribute is true.

  review_request_delegation = {
    for team_parent_key, team_parent in var.team_parents : team_parent_key => team_parent if team_parent.review_request_delegation
  }

  # Merge Function
  # https://developer.hashicorp.com/terraform/language/functions/merge

  # This line of code creates a map of users that includes both admins and members.
  # It uses the `merge` function to combine the `local.admins` and `local.members` maps into a single `users` map.

  users = merge(local.admins, local.members)
}
