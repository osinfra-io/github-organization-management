# <img align="left" width="45" height="45" src="https://github.com/osinfra-io/github-organization-management/assets/1610100/2d305949-da04-4fa7-9b03-b880b400929a"> GitHub Organization: osinfra.io

**[GitHub Actions](https://github.com/osinfra-io/github-organization-management/actions):**

[![Dependabot](https://github.com/osinfra-io/github-organization-management/actions/workflows/dependabot.yml/badge.svg)](https://github.com/osinfra-io/github-organization-management/actions/workflows/dependabot.yml)

## Repository Description

This repository is an example of IaC for managing a GitHub organization using [Terraform](https://www.terraform.io), concepts from [Team Topologies](https://teamtopologies.com/), and sensible default practices learned from software development.

## 🏭 Platform Information

- Documentation: [docs.osinfra.io](https://docs.osinfra.io/github/organization-management)
- Service Interfaces: [github.com](https://github.com/osinfra-io/github-organization-management/issues/new/choose)

- [Add or update membership](https://github.com/osinfra-io/github-organization-management/issues/new?assignees=&labels=enhancement%2Cgood+first+issue&template=add-update-membership.yml&title=Add+or+update+membership)
- [Add or update repository](https://github.com/osinfra-io/github-organization-management/issues/new?assignees=&labels=enhancement%2Cgood+first+issue&template=add-update-repository.yml&title=Add+or+update+repository)

## <img align="left" width="35" height="35" src="https://github.com/osinfra-io/github-organization-management/assets/1610100/39d6ae3b-ccc2-42db-92f1-276a5bc54e65"> Development

Our focus is on the core fundamental practice of cloud engineering, Infrastructure as Code.

>Open Source Infrastructure (as Code) is a development model for infrastructure that focuses on open collaboration applying relative lessons learned from software development practices that organizations can use internally at scale. - [Open Source Infrastructure (as Code)](https://www.osinfra.io)

To avoid slowing down stream-aligned teams, we want to open up the possibility for contributions. The Open Source Infrastructure (as Code) model allows team members external to the platform team to contribute with only a slight increase in cognitive load. This section is for developers who want to contribute to this repository describing the tools used, the skills, and the knowledge required, along with Terraform documentation.

See the documentation for setting up a local development environment [here](https://docs.osinfra.io/fundamentals/development-setup).

### 🛠️ Tools

- [infracost](https://github.com/infracost/infracost)
- [pre-commit](https://github.com/pre-commit/pre-commit)
- [pre-commit-terraform](https://github.com/antonbabenko/pre-commit-terraform)
- [terraform-docs](https://github.com/terraform-docs/terraform-docs)

### 📋 Skills and Knowledge

Links to documentation and other resources required to develop and iterate in this repository successfully.

- [storage buckets](https://cloud.google.com/storage/docs/key-terms#buckets)
- [cloud identity groups](https://cloud.google.com/identity/docs/concepts/groups)
- [service accounts](https://cloud.google.com/iam/docs/service-accounts)
- [iam roles](https://cloud.google.com/iam/docs/understanding-roles)
- [terraform backend type gcs](https://developer.hashicorp.com/terraform/language/settings/backends/gcs)

### 📓 Terraform Documentation

- [global](global/infra/README.md)
