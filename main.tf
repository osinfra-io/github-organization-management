# Required Providers
# https://www.terraform.io/docs/language/providers/requirements.html#requiring-providers

terraform {
  required_providers {
    github = {
      source = "integrations/github"
    }

    # Random Provider
    # https://registry.terraform.io/providers/hashicorp/random/latest/docs

    random = {
      source = "hashicorp/random"
    }
  }
}

# Github Provider
# https://registry.terraform.io/providers/integrations/github/latest/docs

provider "github" {
  owner = "osinfra-io"
  token = var.github_token
}

# Github Actions Secret Resource
# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_organization_secret

resource "github_actions_organization_secret" "this" {

  # checkov:skip=CKV_GIT_4: Look into this in #11

  for_each = var.organization_secrets

  plaintext_value = random_password.this[each.key].result
  secret_name     = each.key
  visibility      = each.value.visibility
}

# Github Branch Protection Resource
# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection

resource "github_branch_protection" "this" {

  # checkov:skip=CKV_GIT_5: It's reasonable for a single code review to be required for a branch protection rule.

  for_each = local.branch_protection

  pattern                         = "main"
  enforce_admins                  = false
  repository_id                   = github_repository.this[each.key].name
  require_conversation_resolution = true
  required_linear_history         = true
  require_signed_commits          = true

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    require_code_owner_reviews      = false
    required_approving_review_count = 1
  }
}

# GitHub Membership Resource
# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/membership

resource "github_membership" "this" {
  for_each = local.users

  role     = each.value
  username = each.key
}

# Github Organization Resource
# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/organization

resource "github_organization_settings" "this" {

  # If you need to import the organization settings, you can do so with the following command:
  # terraform import github_organization_settings.this <org_id>

  # To get the organization id, you can run the following curl command with a token that has the read:org scope against your existing organization.
  # curl -H "Authorization: token $GITHUB_READ_ORG_TOKEN" https://api.github.com/orgs/osinfra-io

  billing_email                                            = var.billing_email
  blog                                                     = "https://www.osinfra.io"
  default_repository_permission                            = "read"
  dependabot_alerts_enabled_for_new_repositories           = true
  dependency_graph_enabled_for_new_repositories            = true
  dependabot_security_updates_enabled_for_new_repositories = true
  description                                              = "Open Source Infrastructure (as Code)"
  email                                                    = "help@osinfra.io"
  has_organization_projects                                = true
  has_repository_projects                                  = false
  location                                                 = "United States of America"
  members_can_create_internal_repositories                 = false
  members_can_create_pages                                 = true
  members_can_create_private_pages                         = true
  members_can_create_private_repositories                  = true
  members_can_create_public_pages                          = true
  members_can_create_public_repositories                   = true
  members_can_create_repositories                          = true
  members_can_fork_private_repositories                    = false
  name                                                     = "osinfra.io (Alpha)"
  twitter_username                                         = "osinfra"
  web_commit_signoff_required                              = false
}

# Github Repository Resource
# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository

resource "github_repository" "this" {

  # checkov:skip=CKV_GIT_1: We want our repos to be public so that we can share them with the world.

  for_each = var.repositories

  allow_auto_merge            = false
  allow_merge_commit          = false
  allow_rebase_merge          = false
  allow_squash_merge          = true
  archive_on_destroy          = true
  delete_branch_on_merge      = true
  description                 = each.value.description
  has_downloads               = false
  has_issues                  = true
  has_wiki                    = false
  license_template            = "gpl-2.0"
  name                        = each.key
  squash_merge_commit_message = "BLANK"
  squash_merge_commit_title   = "PR_TITLE"
  topics                      = concat(each.value.topics, ["infrastructure-as-code", "osinfra"])
  visibility                  = each.value.visibility
  vulnerability_alerts        = true

  dynamic "template" {
    for_each = each.value.template != null ? [each.value.template] : []

    content {
      owner      = "osinfra-io"
      repository = template.value
    }
  }
}

# Github Team Resource
# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team

# If you need to import a team, you can do so with the following command:
# terraform import github_team.this\[\"google-cloud-platform\"\] <team_id>

# To get the team ids, you can run the following curl command with a token that has the read:org scope against your own organization.
# curl -H "Authorization: token $GITHUB_READ_ORG_TOKEN" https://api.github.com/orgs/osinfra-io/teams

resource "github_team" "parents" {
  for_each = var.team_parents

  name        = each.key
  description = each.value.description
  privacy     = each.value.privacy
}

resource "github_team" "children" {
  for_each = var.team_children

  description    = each.value.description
  name           = each.key
  parent_team_id = github_team.parents[each.value.parent_team_key].id
  privacy        = github_team.parents[each.value.parent_team_key].privacy
}

# GitHub Team Membership Resource
# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_members

resource "github_team_members" "parents" {
  for_each = var.team_parents

  team_id = github_team.parents[each.key].id

  dynamic "members" {
    for_each = each.value.members

    content {
      username = members.value
      role     = "member"
    }
  }

  dynamic "members" {
    for_each = each.value.maintainers

    content {
      username = members.value
      role     = "maintainer"
    }
  }
}

resource "github_team_members" "children" {
  for_each = var.team_children

  team_id = github_team.children[each.key].id

  dynamic "members" {
    for_each = each.value.members

    content {
      username = members.value
      role     = "member"
    }
  }

  dynamic "members" {
    for_each = each.value.maintainers

    content {
      username = members.value
      role     = "maintainer"
    }
  }
}

# Github Team Repository Resource
# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_repository

resource "github_team_repository" "children" {
  for_each = local.child_team_repositories

  team_id    = github_team.children[each.value.team_child].id
  repository = github_repository.this[each.value.repository].name
  permission = each.value.permission
}

resource "github_team_repository" "parents" {
  for_each = local.parent_team_repositories

  team_id    = github_team.parents[each.value.team_parent].id
  repository = github_repository.this[each.value.repository].name
  permission = each.value.permission
}

# GitHub Team Settings Resource
# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_settings

resource "github_team_settings" "this" {
  for_each = local.review_request_delegation

  review_request_delegation {
    algorithm    = "LOAD_BALANCE"
    member_count = 2
    notify       = false
  }

  team_id = github_team.parents[each.key].id
}

# Random Password Resource
# https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password

resource "random_password" "this" {
  for_each = var.organization_secrets
  length   = 32
  special  = false
}
