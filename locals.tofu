# Local Values
# https://opentofu.org/docs/language/values/locals

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

  discord_webhooks = {
    for repository_key, repository in var.repositories : repository_key => repository if repository.enable_discord_webhook
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

  repository_default_labels = {
    "bug"              = { color = "84A255", description = "Something is not working" }
    "chore"            = { color = "FBCA04", description = "Grunt tasks etc; no production code change" }
    "documentation"    = { color = "0075CA", description = "Improvements or additions to documentation" }
    "enhancement"      = { color = "A2EEEF", description = "New feature or request" }
    "good first issue" = { color = "7057FF", description = "Good for newcomers" }
    "major"            = { color = "B60205", description = "Major version: Incompatible changes" }
    "minor"            = { color = "FBCA04", description = "Minor version: Additional functionality in a backwards-compatible manner" }
    "patch"            = { color = "0E8A16", description = "Patch version: Backwards-compatible bug fixes" }
    "security"         = { color = "B60205", description = "Security vulnerability or configuration" }
    "tech-debt"        = { color = "443221", description = "Accrued work that is owed to a system or process" }
  }

  repository_labels = {
    for label in flatten([
      for repository_key, repository in var.repositories : [
        for label_key, label in merge(local.repository_default_labels, repository.labels) : {
          name        = label_key
          color       = label.color
          description = label.description
          repository  = repository_key
        }
      ]
  ]) : "${label.repository}-${label.name}" => label }

  review_request_delegations = {
    for team_parent_key, team_parent in var.team_parents : team_parent_key => team_parent if team_parent.review_request_delegation
  }

  users = merge(local.admins, local.members)
}
