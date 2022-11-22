# Input Variables
# https://www.terraform.io/language/values/variables

variable "admins" {
  description = "A set of admins to add to the organization"
  type        = set(string)
  default = [
    "brettcurtis",
    "johnbooth",
    "osinfra-sa"
  ]
}

variable "github_token" {
  description = "The GitHub token used for managing the organization"
  type        = string
  sensitive   = true
}

variable "members" {
  description = "A set of members to add to the organization"
  type        = set(string)
  default     = []
}

variable "organization_secrets" {
  description = "Map of secrets to add to the organization"
  type        = map(any)
  default = {
    "GPG_PASSPHRASE" = {
      description = "GPG Passphrase used to encrypt plan.out files"
      visibility  = "all"
    }
  }
}

variable "repositories" {
  description = "Map of repositories to create"
  type        = map(any)
  default = {

    # Use this repository to test changes in the github_repository terraform resource

    "github-repo-test" = {
      description = "Test Repository"
      template    = null
      topics      = ["testing"]
    }

    # Keep the following repositories in alphabetical order

    ".github" = {
      description = "A Special Repository."
      template    = null
      topics      = ["github"]
    }

    ".github-private" = {
      description = "A Special Repository."
      template    = null
      topics      = ["github"]
    }

    "diagrams" = {
      description = "Diagrams using diagrams.net a free and open source cross-platform graph drawing software."
      template    = null
      topics      = ["diagrams"]
    }

    "local-development-setup" = {
      description = "Development environment setup scripts for Infrastructure as Code (IaC)."
      template    = null
      topics      = ["docker"]
    }

    "gitbook-docs" = {
      description = "GitBook documentation for the osinfra.io organization."
      template    = null
      topics      = ["gitbook"]
    }

    "github-kitchen-terraform-action" = {
      description = "Kitchen-Terraform GitHub Action."
      template    = null
      topics      = ["github", "github-actions"]
    }

    "github-misc-called-workflows" = {
      description = "Miscellaneous Reusable GitHub Called Workflows."
      template    = null
      topics      = ["github", "github-actions"]
    }

    "github-organization-discussions" = {
      description = "This repository is for osinfra.io GitHub organization discussions."
      template    = null
      topics      = ["github"]
    }

    "github-organization-management" = {
      description = "This repository manages the osinfra.io GitHub organization."
      template    = null
      topics      = ["github"]
    }

    "github-terraform-codespace" = {
      description = "GitHub Codespace for Terraform Infrastructure as Code (IaC) Development."
      template    = null
      topics      = ["github", "github-codespaces", "terraform"]
    }

    "github-terraform-gcp-called-workflows" = {
      description = "Reusable GitHub Called Workflows for Terraform and Google Cloud Platform."
      template    = null
      topics      = ["github", "github-actions", "terraform"]
    }

    "google-cloud-hierarchy" = {
      description = "IaC for Google Cloud Platform Hierarchy."
      template    = null
      topics      = ["google-cloud-platform", "terraform"]
    }

    "google-cloud-logging" = {
      description = "IaC for Google Cloud Platform logging."
      template    = null
      topics      = ["google-cloud-platform", "terraform"]
    }

    "google-cloud-observability" = {
      description = "IaC for Google Cloud Platform observability."
      template    = null
      topics      = ["google-cloud-platform", "terraform"]
    }

    "google-cloud-services" = {
      description = "IaC for Google Cloud Platform services."
      template    = null
      topics      = ["google-cloud-platform", "terraform"]
    }

    "google-cloud-terraform" = {
      description = "IaC for Google Cloud Platform Terraform backend."
      template    = null
      topics      = ["google-cloud-platform", "terraform"]
    }

    "google-cloud-workload-identity" = {
      description = "IaC for Google Cloud Platform workload identity."
      template    = null
      topics      = ["google-cloud-platform", "terraform"]
    }

    "terraform-google-cloud-dns" = {
      description = "Terraform example module for creating a Google Cloud Platform Cloud DNS."
      template    = null
      topics      = ["google-cloud-platform", "terraform"]
    }

    "terraform-google-cloud-nat" = {
      description = "Terraform example module for creating a Google Cloud Platform Cloud NAT."
      template    = null
      topics      = ["google-cloud-platform", "terraform"]
    }

    "terraform-google-cloud-sql" = {
      description = "Terraform example module for creating a Google Cloud Platform Cloud SQL instance."
      template    = null
      topics      = ["google-cloud-platform", "terraform"]
    }

    "terraform-google-kubernetes-engine" = {
      description = "Terraform example module for creating a Google Cloud Platform Kubernetes Engine cluster."
      template    = null
      topics      = ["google-cloud-platform", "terraform"]
    }

    "terraform-google-project" = {
      description = "Terraform example module for creating a Google Cloud Platform project."
      template    = null
      topics      = ["google-cloud-platform", "terraform"]
    }

    "terraform-google-storage-bucket" = {
      description = "Terraform example module for creating a Google Cloud Platform Storage bucket."
      template    = null
      topics      = ["google-cloud-platform", "terraform"]
    }

    "terraform-google-subnet" = {
      description = "Terraform example module for creating a Google Cloud Platform subnet."
      template    = null
      topics      = ["google-cloud-platform", "terraform"]
    }

    "terraform-google-vpc" = {
      description = "Terraform example module for creating a Google Cloud Platform VPC."
      template    = null
      topics      = ["google-cloud-platform", "terraform"]
    }
  }
}
