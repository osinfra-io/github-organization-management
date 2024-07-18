# <img align="left" width="45" height="45" src="https://github.com/osinfra-io/github-organization-management/assets/1610100/2d305949-da04-4fa7-9b03-b880b400929a"> GitHub Organization: osinfra.io

**[GitHub Actions](https://github.com/osinfra-io/github-organization-management/actions):**

[![Dependabot](https://github.com/osinfra-io/github-organization-management/actions/workflows/dependabot.yml/badge.svg)](https://github.com/osinfra-io/github-organization-management/actions/workflows/dependabot.yml)

## Repository Description

This repository is an example of IaC for managing a GitHub organization using [Terraform](https://www.terraform.io), concepts from [Team Topologies](https://teamtopologies.com/), and sensible default practices learned from software development.

## 🏭 Platform Information

- Documentation: [docs.osinfra.io](https://docs.osinfra.io/github/organization-management)
- Service Interfaces: [github.com](https://github.com/osinfra-io/github-organization-management/issues/new/choose)

## <img align="left" width="35" height="35" src="https://github.com/osinfra-io/github-organization-management/assets/1610100/39d6ae3b-ccc2-42db-92f1-276a5bc54e65"> Development

We focus on the core fundamental practice of cloud engineering, Infrastructure as Code.

>Open Source Infrastructure (as Code) is a development model for infrastructure that focuses on open collaboration and applying relative lessons learned from software development practices that organizations can use internally at scale. - [Open Source Infrastructure (as Code)](https://www.osinfra.io)

To avoid slowing down stream-aligned teams, we want to open up the possibility for contributions. The Open Source Infrastructure (as Code) model allows team members external to the platform team to contribute with only a slight increase in cognitive load. This section is for developers who want to contribute to this repository, describing the tools used, the skills, and the knowledge required, along with Terraform documentation.

See the documentation for setting up a local development environment [here](https://docs.osinfra.io/fundamentals/development-setup).

### 🛠️ Tools

- [checkov](https://github.com/bridgecrewio/checkov)
- [pre-commit](https://github.com/pre-commit/pre-commit)
- [pre-commit-terraform](https://github.com/antonbabenko/pre-commit-terraform)
- [terraform-docs](https://github.com/terraform-docs/terraform-docs)

### 📋 Skills and Knowledge

Links to documentation and other resources required to develop and iterate in this repository successfully.

- [branch protection rules](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/defining-the-mergeability-of-pull-requests/about-protected-branchess)
- [encrypted secrets for an organization](https://docs.github.com/en/actions/security-guides/encrypted-secrets#creating-encrypted-secrets-for-an-organization)
- [organization membership](https://docs.github.com/en/organizations/managing-membership-in-your-organization)
- [repositories](https://docs.github.com/en/repositories/creating-and-managing-repositories/about-repositories)
- [teams](https://docs.github.com/en/organizations/managing-access-to-your-organizations-repositories/managing-teams-in-your-organization)

### 📓 Terraform Documentation

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
#### Providers

| Name | Version |
|------|---------|
| github | 6.2.3 |
| random | 3.6.2 |
| template | 2.2.0 |
| time | 0.11.2 |

#### Resources

| Name | Type |
|------|------|
| [github_actions_organization_permissions.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_organization_permissions) | resource |
| [github_actions_organization_secret.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_organization_secret) | resource |
| [github_branch_protection.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection) | resource |
| [github_membership.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/membership) | resource |
| [github_organization_security_manager.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/organization_security_manager) | resource |
| [github_organization_settings.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/organization_settings) | resource |
| [github_repository.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository_file.security_policy](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_file) | resource |
| [github_repository_webhook.datadog](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_webhook) | resource |
| [github_repository_webhook.discord](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_webhook) | resource |
| [github_team.children](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team) | resource |
| [github_team.parents](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team) | resource |
| [github_team_members.children](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_members) | resource |
| [github_team_members.parents](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_members) | resource |
| [github_team_repository.children](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_repository) | resource |
| [github_team_repository.parents](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_repository) | resource |
| [github_team_settings.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_settings) | resource |
| [random_password.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [time_rotating.this](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/rotating) | resource |
| [template_file.security_policy](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| admins | A set of admins to add to the organization | `set(string)` | n/a | yes |
| datadog\_webhook\_api\_key | The Datadog API key used for creating webhooks | `string` | n/a | yes |
| discord\_webhook\_api\_key | The Discord API key used for creating webhooks | `string` | n/a | yes |
| github\_token | The GitHub token used for managing the organization | `string` | n/a | yes |
| members | A set of members to add to the organization | `set(string)` | `[]` | no |
| organization\_secrets | Map of secrets to add to the organization | ```map(object({ description = string visibility = string }))``` | n/a | yes |
| repositories | Map of repositories to create | ```map(object({ description = string enable_branch_protection = optional(bool, true) enable_discord_webhook = optional(bool, true) enable_datadog_webhook = optional(bool, true) has_discussions = optional(bool, false) is_template = optional(bool, false) push_allowances = optional(list(string), []) required_status_checks_contexts = optional(list(string), []) template = optional(string) topics = optional(list(string)) # In most cases, the visibility of your organizations repository should be private. # However, we are keeping our code public to encourage others to learn from our work. visibility = optional(string, "public") }))``` | n/a | yes |
| team\_children | Map of child teams to create | ```map(object({ description = string maintainers = optional(set(string), []) members = optional(set(string), []) permission = optional(string, null) parent_team_key = string repositories = optional(set(string), []) }))``` | n/a | yes |
| team\_parents | Map of parent teams to create | ```map(object({ description = string maintainers = optional(set(string), []) members = optional(set(string), []) permission = optional(string, null) privacy = optional(string, "closed") repositories = optional(set(string), []) review_request_delegation = optional(bool, false) }))``` | n/a | yes |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
