# <img align="left" width="45" height="45" src="https://user-images.githubusercontent.com/1610100/201473670-e0e6bdeb-742f-4be1-a47a-3506309620a3.png"> GitHub Organization: osinfra.io

**[GitHub Actions](https://github.com/osinfra-io/github-organization-management/actions):**

[![Dependabot](https://github.com/osinfra-io/github-organization-management/actions/workflows/dependabot.yml/badge.svg)](https://github.com/osinfra-io/github-organization-management/actions/workflows/dependabot.yml)

**[Bridgecrew](https://www.bridgecrew.cloud/projects?types=Passed&repository=osinfra-io%2Fgithub-organization-management&branch=main):**

[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/osinfra-io/github-organization-management/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=osinfra-io%2Fgithub-organization-management&benchmark=INFRASTRUCTURE+SECURITY)

## Repository details

This repository manages the osinfra.io GitHub organization.

### Services Documentation

- [docs.osinfra.io](https://docs.osinfra.io/github/organization-management)

### Service interfaces

- `github_membership` service interface: [Issue](https://github.com/osinfra-io/github-organization-management/issues/new?assignees=osinfra-io/github-platform-team&labels=enhancement&template=github_membership.md)

### Response times

- Responsible team: [GitHub Platform Team](https://github.com/orgs/osinfra-io/teams/github-platform-team)
- Response time for incidents: `60 minutes`
- Response time for other incidents: `120 minutes`
- Response time for support:  `60 minutes`
- Response time for feedback: `30 minutes`

### Roadmap

- Link to service roadmap: [GitHub Project](https://github.com/orgs/osinfra-io/projects/5/views/1)

### Communication channels

#### To report a possible incident

Contact exclusively via:

- Google Chat - Channel: [GitHub](https://chat.google.com/room/AAAAPvNvpeM?cls=7)
- Phone number:

#### To ask for support or provide feedback

Contact via any of these:

- Google Chat - Channel: [GitHub](https://chat.google.com/room/AAAAPvNvpeM?cls=7)
- Email address: [github-platform-team@osinfra.io](mailto:github-platform-team@osinfra.io)
- Phone number:
- Office hours: `Weekdays 5:00 PM EST - 10:00 PM EST` `Weekends 8:00 AM EST - 5:00 PM EST`

## Development

See the documentation for setting up a local development environment [here](https://docs.osinfra.io).

Tools in use:

- [checkov](https://github.com/bridgecrewio/checkov)
- [pre-commit](https://github.com/pre-commit/pre-commit)
- [pre-commit-terraform](https://github.com/antonbabenko/pre-commit-terraform)
- [terraform-docs](https://github.com/terraform-docs/terraform-docs)

## Terraform Documentation
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
### Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider_github) | 5.12.0 |
| <a name="provider_random"></a> [random](#provider_random) | 3.4.3 |

### Modules

No modules.

### Resources

| Name | Type |
|------|------|
| [github_actions_organization_secret.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_organization_secret) | resource |
| [github_branch_protection.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection) | resource |
| [github_membership.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/membership) | resource |
| [github_repository.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [random_password.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admins"></a> [admins](#input_admins) | A set of admins to add to the organization | `set(string)` | n/a | yes |
| <a name="input_github_token"></a> [github_token](#input_github_token) | The GitHub token used for managing the organization | `string` | n/a | yes |
| <a name="input_organization_secrets"></a> [organization_secrets](#input_organization_secrets) | Map of secrets to add to the organization | <pre>map(object({<br>    description = string<br>    visibility  = string<br>  }))</pre> | n/a | yes |
| <a name="input_repositories"></a> [repositories](#input_repositories) | Map of repositories to create | <pre>map(object({<br>    description              = string<br>    enable_branch_protection = optional(bool, true)<br>    template                 = optional(string)<br>    topics                   = optional(list(string))<br><br>    # In most cases, the visibility of your organizations repository should be private.<br>    # However, we are keeping our code public to encourage others to learn from our work.<br><br>    visibility = optional(string, "public")<br>  }))</pre> | n/a | yes |
| <a name="input_members"></a> [members](#input_members) | A set of members to add to the organization | `set(string)` | `[]` | no |

### Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
