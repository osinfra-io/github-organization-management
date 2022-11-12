# <img align="left" width="45" height="45" src="https://user-images.githubusercontent.com/1610100/201452088-5c674021-0dde-4741-9217-7f91c49fa516.png"> GitHub Organization: osinfra.io

This repository manages the osinfra.io GitHub organization.

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
| <a name="provider_github"></a> [github](#provider_github) | 5.8.0 |
| <a name="provider_random"></a> [random](#provider_random) | 3.4.3 |

### Resources

| Name | Type |
|------|------|
| [github_actions_secret.gpg_passphrase](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_branch_protection.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection) | resource |
| [github_membership.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/membership) | resource |
| [github_repository.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [random_password.gpg_passphrase](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
