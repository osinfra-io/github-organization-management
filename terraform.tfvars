admins = [
  "brettcurtis",
  "johnbooth",
  "osinfra-sa"
]

organization_secrets = {
  "GPG_PASSPHRASE" = {
    description = "GPG Passphrase used to encrypt plan.out files"
    visibility  = "all"
  }
}

repositories = {
  # Use this repository to test changes in the github_repository terraform resource

  "github-repo-test" = {
    description = "Test Repository"
    topics      = ["testing"]
  }

  # Keep the following repositories in alphabetical order

  ".github" = {
    description = "A Special Repository."
    topics      = ["github"]
  }

  ".github-private" = {
    description = "A Special Repository."
    topics      = ["github"]
    visibility  = "private"
  }

  "diagrams" = {
    description = "Diagrams using diagrams.net a free and open source cross-platform graph drawing software."
    topics      = ["diagrams"]
  }

  "local-development-setup" = {
    description = "Development environment setup scripts for Infrastructure as Code (IaC)."
    topics      = ["docker"]
  }

  "gitbook-docs" = {
    description = "GitBook documentation for the osinfra.io organization."
    topics      = ["gitbook"]
  }

  "github-kitchen-terraform-action" = {
    description = "Kitchen-Terraform GitHub Action."
    topics      = ["github", "github-actions"]
  }

  "github-misc-called-workflows" = {
    description = "Miscellaneous Reusable GitHub Called Workflows."
    topics      = ["github", "github-actions"]
  }

  "github-organization-discussions" = {
    description = "This repository is for osinfra.io GitHub organization discussions."
    topics      = ["github"]
  }

  "github-organization-management" = {
    description = "This repository manages the osinfra.io GitHub organization."
    topics      = ["github"]
  }

  "github-terraform-codespace" = {
    description = "GitHub Codespace for Terraform Infrastructure as Code (IaC) Development."
    topics      = ["github", "github-codespaces", "terraform"]
  }

  "github-terraform-gcp-called-workflows" = {
    description = "Reusable GitHub Called Workflows for Terraform and Google Cloud Platform."
    topics      = ["github", "github-actions", "terraform"]
  }

  "google-cloud-hierarchy" = {
    description = "IaC for Google Cloud Platform Hierarchy."
    topics      = ["google-cloud-platform", "terraform"]
  }

  "google-cloud-logging" = {
    description = "IaC for Google Cloud Platform logging."
    topics      = ["google-cloud-platform", "terraform"]
  }

  "google-cloud-observability" = {
    description = "IaC for Google Cloud Platform observability."
    topics      = ["google-cloud-platform", "terraform"]
  }

  "google-cloud-services" = {
    description = "IaC for Google Cloud Platform services."
    topics      = ["google-cloud-platform", "terraform"]
  }

  "google-cloud-terraform" = {
    description = "IaC for Google Cloud Platform Terraform backend."
    topics      = ["google-cloud-platform", "terraform"]
  }

  "google-cloud-workload-identity" = {
    description = "IaC for Google Cloud Platform workload identity."
    topics      = ["google-cloud-platform", "terraform"]
  }

  "terraform-google-cloud-dns" = {
    description = "Terraform example module for creating a Google Cloud Platform Cloud DNS."
    topics      = ["google-cloud-platform", "terraform"]
  }

  "terraform-google-cloud-nat" = {
    description = "Terraform example module for creating a Google Cloud Platform Cloud NAT."
    topics      = ["google-cloud-platform", "terraform"]
  }

  "terraform-google-cloud-sql" = {
    description = "Terraform example module for creating a Google Cloud Platform Cloud SQL instance."
    topics      = ["google-cloud-platform", "terraform"]
  }

  "terraform-google-kubernetes-engine" = {
    description = "Terraform example module for creating a Google Cloud Platform Kubernetes Engine cluster."
    topics      = ["google-cloud-platform", "terraform"]
  }

  "terraform-google-project" = {
    description = "Terraform example module for creating a Google Cloud Platform project."
    topics      = ["google-cloud-platform", "terraform"]
  }

  "terraform-google-storage-bucket" = {
    description = "Terraform example module for creating a Google Cloud Platform Storage bucket."
    topics      = ["google-cloud-platform", "terraform"]
  }

  "terraform-google-subnet" = {
    description = "Terraform example module for creating a Google Cloud Platform subnet."
    topics      = ["google-cloud-platform", "terraform"]
  }

  "terraform-google-vpc" = {
    description = "Terraform example module for creating a Google Cloud Platform VPC."
    topics      = ["google-cloud-platform", "terraform"]
  }
}
