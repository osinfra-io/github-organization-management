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

    # Time Provider
    # https://registry.terraform.io/providers/hashicorp/time/latest/docs

    time = {
      source = "hashicorp/time"
    }
  }
}

# Github Provider
# https://registry.terraform.io/providers/integrations/github/latest/docs

# Some API operations may not be available when using a GitHub App installation configuration. For more information, refer to the list of
# supported operations: https://docs.github.com/en/rest/authentication/endpoints-available-for-github-app-installation-access-tokens

# provider "github" {
#   app_auth {
#     id              = "1081373"
#     installation_id = "58130651"
#     pem_file        = base64decode(var.app_pem_file_base64)
#   }

#   owner = "osinfra-io"
# }

provider "github" {
  token = var.token
  owner = "osinfra-io"
}

# GitHub Application Data Source
# https://registry.terraform.io/providers/integrations/github/latest/docs/data-sources/app

# Currently private GitHub Apps can only use this endpoint on themselves and if we use a private GitHub App for authentication, we can't
# use this data source to get the node_id of another GitHub App.

data "github_app" "pr_approve_and_merge_osinfra_io" {
  slug = "pr-approve-and-merge-osinfra-io"
}

# GitHub Actions Organization Permissions Resource
# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_organization_permissions

resource "github_actions_organization_permissions" "this" {
  allowed_actions = "selected"

  allowed_actions_config {
    github_owned_allowed = true

    patterns_allowed = [
      "datadog/*",
      "dependabot/*",
      "docker/*",
      "github/*",
      "google-github-actions/*",
      "hashicorp/*",
      "infracost/*",
      "open-policy-agent/*",
      "opentofu/*",
      "projectdiscovery/*"
    ]

    verified_allowed = false
  }

  enabled_repositories = "all"
}


# Github Actions Secret Resource
# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_organization_secret

resource "github_actions_organization_secret" "this" {

  # Ensure GitHub Actions secrets are encrypted
  # checkov:skip=CKV_GIT_4: We are passing the secret from the random_password resource which is sensitive by default
  # and not checking in any plain text values. State is always secured.

  for_each = var.organization_secrets

  plaintext_value = random_password.this[each.key].result
  secret_name     = each.key
  visibility      = each.value.visibility
}

# Github Branch Protection Resource
# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection

resource "github_branch_protection" "this" {

  # GitHub pull requests should require at least 2 approvals
  # checkov:skip=CKV_GIT_5: 1 approval is reasonable for a small team

  for_each = local.branch_protections

  enforce_admins                  = false
  pattern                         = "main"
  repository_id                   = github_repository.this[each.key].name
  require_conversation_resolution = true
  required_linear_history         = true
  require_signed_commits          = true

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }

  required_status_checks {
    contexts = each.value.required_status_checks_contexts
    strict   = true
  }

  restrict_pushes {
    push_allowances = concat(
      each.value.push_allowances,
      [
        data.github_app.pr_approve_and_merge_osinfra_io.node_id
      ]
    )
  }
}

# GitHub Issue Labels Resource
# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/issue_label

resource "github_issue_label" "this" {
  for_each = local.repository_labels

  name        = each.value.name
  color       = each.value.color
  description = each.value.description
  repository  = github_repository.this[each.value.repository].name
}

# GitHub Membership Resource
# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/membership

resource "github_membership" "this" {
  for_each = local.users

  role     = each.value
  username = each.key
}

# Github Organization Security Manager Resource
# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/organization_security_manager

resource "github_organization_security_manager" "this" {
  team_slug = github_team.parents["enabling-security"].slug
}

# Github Organization Settings Resource
# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/organization_settings

resource "github_organization_settings" "this" {

  # If you need to import the organization settings, you can do so with the following command:
  # terraform import github_organization_settings.this <org_id>

  # To get the organization id, you can run the following curl command with a token that has the read:org scope against your existing organization.
  # curl -H "Authorization: token $GITHUB_READ_ORG_TOKEN" https://api.github.com/orgs/osinfra-io

  billing_email                                                = "brett@osinfra.io"
  blog                                                         = "https://osinfra.io"
  company                                                      = "Open Source Infrastructure (as Code)"
  default_repository_permission                                = "read"
  dependabot_alerts_enabled_for_new_repositories               = true
  dependency_graph_enabled_for_new_repositories                = true
  dependabot_security_updates_enabled_for_new_repositories     = true
  description                                                  = "Open Source Infrastructure (as Code)"
  email                                                        = "help@osinfra.io"
  has_organization_projects                                    = true
  has_repository_projects                                      = true
  location                                                     = "United States of America"
  members_can_create_internal_repositories                     = false
  members_can_create_pages                                     = false
  members_can_create_private_pages                             = false
  members_can_create_private_repositories                      = true
  members_can_create_public_pages                              = false
  members_can_create_public_repositories                       = true
  members_can_create_repositories                              = true
  members_can_fork_private_repositories                        = false
  name                                                         = "osinfra.io (Alpha)"
  secret_scanning_enabled_for_new_repositories                 = true
  secret_scanning_push_protection_enabled_for_new_repositories = true
  web_commit_signoff_required                                  = false
}

# Github Repository Resource
# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository

resource "github_repository" "this" {

  # Ensure GitHub repository is Private
  # checkov:skip=CKV_GIT_1: Public is ok for us since we are an open source project

  for_each = var.repositories

  allow_auto_merge            = true
  allow_merge_commit          = false
  allow_rebase_merge          = false
  allow_squash_merge          = true
  allow_update_branch         = true
  archive_on_destroy          = true
  delete_branch_on_merge      = true
  description                 = each.value.description
  has_downloads               = false
  has_discussions             = each.value.has_discussions
  has_issues                  = true
  has_projects                = true
  has_wiki                    = false
  homepage_url                = "https://www.osinfra.io"
  is_template                 = each.value.is_template
  license_template            = "gpl-2.0"
  name                        = each.key
  squash_merge_commit_message = "BLANK"
  squash_merge_commit_title   = "PR_TITLE"
  topics                      = each.value.topics
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

# GitHub Repository File Resource
# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_file

resource "github_repository_file" "release" {
  for_each = var.repositories

  branch              = "main"
  content             = file("${path.module}/markdown/release.yml")
  file                = ".github/release.yml"
  repository          = each.key
  commit_message      = "Update .github/release.yml"
  commit_author       = "Open Source Infrastructure as Code Service Account"
  commit_email        = "github-sa@osinfra.io"
  overwrite_on_create = true

  depends_on = [
    github_branch_protection.this
  ]
}

resource "github_repository_file" "security_policy" {
  for_each = var.repositories

  branch = "main"
  content = templatefile("${path.module}/markdown/SECURITY.md.tpl", {
    repository = each.key
  })
  file                = "SECURITY.md"
  repository          = each.key
  commit_message      = "Update SECURITY.md"
  commit_author       = "Open Source Infrastructure as Code Service Account"
  commit_email        = "github-sa@osinfra.io"
  overwrite_on_create = true

  depends_on = [
    github_branch_protection.this
  ]
}

# Github Repository Webhook Resource
# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_webhook

resource "github_repository_webhook" "discord" {
  for_each = local.discord_webhooks

  active = true

  configuration {
    content_type = "json"
    insecure_ssl = false
    url          = "https://discord.com/api/webhooks/1175823442415722517/${var.discord_webhook_api_key}/github"
  }

  events     = ["*"]
  repository = each.key

  depends_on = [
    github_repository.this
  ]
}

resource "github_repository_webhook" "datadog" {
  for_each = local.datadog_webhooks

  active = true

  configuration {
    content_type = "json"
    insecure_ssl = false
    url          = "https://app.datadoghq.com/intake/webhook/github?api_key=${var.datadog_webhook_api_key}"
  }

  events = [
    "commit_comment",              # This event occurs when there is activity relating to commit comments.
    "create",                      # This event occurs when a Git branch or tag is created.
    "issue_comment",               # This event occurs when there is activity relating to a comment on an issue or pull request.
    "issues",                      # This event occurs when there is activity relating to an issue.
    "pull_request",                # This event occurs when there is activity on a pull request.
    "pull_request_review_comment", # This event occurs when there is activity relating to a pull request review comment.
    "push",                        # This event occurs when there is a push to a repository branch.
    "repository",                  # This event occurs when there is activity relating to repositories.
    "security_and_analysis",       # This event occurs when code security and analysis features are enabled or disabled for a repository.
    "team_add"                     # This event occurs when a team is added to a repository.
  ]

  repository = each.key

  depends_on = [
    github_repository.this
  ]
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
  for_each = local.review_request_delegations

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

  keepers = {
    rotation_time = time_rotating.this.rotation_rfc3339
  }
}

# Time Rotating Resource
# https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/rotating

resource "time_rotating" "this" {
  rotation_days = 5
}
