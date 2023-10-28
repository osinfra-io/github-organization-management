# Terraform Global Infrastructure Documentation

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | 5.39.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.5.1 |
| <a name="provider_time"></a> [time](#provider\_time) | 0.9.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_actions_organization_permissions.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_organization_permissions) | resource |
| [github_actions_organization_secret.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_organization_secret) | resource |
| [github_branch_protection.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection) | resource |
| [github_membership.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/membership) | resource |
| [github_organization_security_manager.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/organization_security_manager) | resource |
| [github_organization_settings.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/organization_settings) | resource |
| [github_repository.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository_webhook.datadog](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_webhook) | resource |
| [github_team.children](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team) | resource |
| [github_team.parents](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team) | resource |
| [github_team_members.children](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_members) | resource |
| [github_team_members.parents](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_members) | resource |
| [github_team_repository.children](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_repository) | resource |
| [github_team_repository.parents](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_repository) | resource |
| [github_team_settings.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_settings) | resource |
| [random_password.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [time_rotating.this](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/rotating) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admins"></a> [admins](#input\_admins) | A set of admins to add to the organization | `set(string)` | n/a | yes |
| <a name="input_billing_email"></a> [billing\_email](#input\_billing\_email) | The billing email address for the organization | `string` | n/a | yes |
| <a name="input_datadog_webhook_api_key"></a> [datadog\_webhook\_api\_key](#input\_datadog\_webhook\_api\_key) | The Datadog API key used for creating webhooks | `string` | n/a | yes |
| <a name="input_github_token"></a> [github\_token](#input\_github\_token) | The GitHub token used for managing the organization | `string` | n/a | yes |
| <a name="input_members"></a> [members](#input\_members) | A set of members to add to the organization | `set(string)` | `[]` | no |
| <a name="input_organization_secrets"></a> [organization\_secrets](#input\_organization\_secrets) | Map of secrets to add to the organization | <pre>map(object({<br>    description = string<br>    visibility  = string<br>  }))</pre> | n/a | yes |
| <a name="input_repositories"></a> [repositories](#input\_repositories) | Map of repositories to create | <pre>map(object({<br>    description                     = string<br>    enable_branch_protection        = optional(bool, true)<br>    enable_datadog_webhook          = optional(bool, true)<br>    has_discussions                 = optional(bool, false)<br>    is_template                     = optional(bool, false)<br>    push_restrictions               = optional(list(string), [])<br>    required_status_checks_contexts = optional(list(string), [])<br>    template                        = optional(string)<br>    topics                          = optional(list(string))<br><br>    # In most cases, the visibility of your organizations repository should be private.<br>    # However, we are keeping our code public to encourage others to learn from our work.<br><br>    visibility = optional(string, "public")<br>  }))</pre> | n/a | yes |
| <a name="input_team_children"></a> [team\_children](#input\_team\_children) | Map of child teams to create | <pre>map(object({<br>    description     = string<br>    maintainers     = optional(set(string), [])<br>    members         = optional(set(string), [])<br>    permission      = optional(string, null)<br>    parent_team_key = string<br>    repositories    = optional(set(string), [])<br>  }))</pre> | n/a | yes |
| <a name="input_team_parents"></a> [team\_parents](#input\_team\_parents) | Map of parent teams to create | <pre>map(object({<br>    description               = string<br>    maintainers               = optional(set(string), [])<br>    members                   = optional(set(string), [])<br>    permission                = optional(string, null)<br>    privacy                   = optional(string, "closed")<br>    repositories              = optional(set(string), [])<br>    review_request_delegation = optional(bool, false)<br>  }))</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
