# Required Providers
# https://www.terraform.io/docs/language/providers/requirements.html#requiring-providers

terraform {
  required_providers {

    # Github Provider
    # https://registry.terraform.io/providers/integrations/github/latest/docs

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

provider "github" {
  owner = "osinfra-io"
  token = var.github_token
}

# Github Actions Secret Resource
# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret

resource "github_actions_secret" "gpg_passphrase" {
  # checkov:skip=CKV_GIT_4: ADD REASON
  for_each = var.repos

  plaintext_value = random_password.gpg_passphrase[each.key].result
  repository      = github_repository.this[each.key].name
  secret_name     = "GPG_PASSPHRASE"
}

# Github Branch Protection Resource
# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection

resource "github_branch_protection" "this" {
  # checkov:skip=CKV_GIT_5: ADD REASON
  # checkov:skip=CKV_GIT_6: ADD REASON
  for_each = var.repos

  pattern                         = "main"
  enforce_admins                  = true
  repository_id                   = github_repository.this[each.key].name
  require_conversation_resolution = true
  require_signed_commits          = false

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

# Github Repository Resource
# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository

resource "github_repository" "this" {
  # checkov:skip=CKV_GIT_1: We want our repos to be public so that we can share them with the world
  for_each = var.repos

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
  name                        = each.key
  squash_merge_commit_message = "BLANK"
  squash_merge_commit_title   = "PR_TITLE"
  topics                      = concat(each.value.topics, ["infrastructure-as-code", "osinfra"])
  visibility                  = "public"
  vulnerability_alerts        = true

  dynamic "template" {
    for_each = each.value.template != null ? [each.value.template] : []

    content {
      owner      = "osinfra-io"
      repository = template.value
    }
  }
}

# Random Password Resource
# https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password

resource "random_password" "gpg_passphrase" {
  for_each = var.repos

  length  = 32
  special = false
}
