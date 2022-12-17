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
    for repositories_key, repository in var.repositories : repositories_key => repository if repository.enable_branch_protection
  }

  # This will iterate over the members list and create a map with the key being the user and the value being admin.

  members = {
    for user in var.members : user => "member"
  }

  # Merge Function
  # https://developer.hashicorp.com/terraform/language/functions/merge

  # This will merge the admins and members maps into a single map with the key being the user and the value being the role.

  users = merge(local.admins, local.members)
}
