admins = [
  "brettcurtis",
  "osinfra-sa"
]

organization_secrets = {
  "GPG_PASSPHRASE" = {
    description = "GPG Passphrase used to encrypt plan.out files"
    visibility  = "all"
  }
}

repositories = {

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
    description = "Local development environment setup scripts example for working with Infrastructure as Code (IaC)."

    topics = [
      "docker",
      "infrastructure-as-code",
      "local-development",
      "osinfra",
      "terraform"
    ]
  }

  "gitbook-docs" = {
    description              = "GitBook documentation for the osinfra.io organization."
    enable_branch_protection = false
    topics                   = ["gitbook"]
  }

  "github-kitchen-terraform-action" = {
    description = "Kitchen-Terraform GitHub Action."

    topics = [
      "chef-inspec",
      "github",
      "github-actions",
      "infrastructure-as-code",
      "kitchen-terraform",
      "osinfra",
      "terraform"
    ]
  }

  "github-misc-called-workflows" = {
    description = "Miscellaneous Reusable GitHub Called Workflow examples."

    topics = [
      "github",
      "github-actions"
    ]
  }

  "github-organization-discussions" = {
    description = "This repository is for osinfra.io GitHub organization discussions."
    topics      = ["github"]
  }

  "github-organization-management" = {
    description = "Infrastructure as Code (IaC) example for a GitHub organization."

    topics = [
      "github",
      "infrastructure-as-code",
      "osinfra",
      "platform-team",
      "terraform"
    ]

    push_restrictions = [
      "osinfra-io/platform-github"
    ]
  }

  "github-terraform-codespace" = {
    description = "GitHub Codespace example for Terraform Infrastructure as Code (IaC) Development."

    topics = [
      "github",
      "github-codespaces",
      "infrastructure-as-code",
      "osinfra",
      "terraform"
    ]
  }

  "github-terraform-gcp-called-workflows" = {
    description = "Reusable GitHub Called Workflow examples for Terraform and Google Cloud Platform."

    topics = [
      "github",
      "github-actions",
      "infrastructure-as-code",
      "osinfra",
      "terraform"
    ]
  }

  "google-cloud-hierarchy" = {
    description = "Infrastructure as Code (IaC) example for Google Cloud Platform Hierarchy."

    topics = [
      "google-cloud-landing-zone-platform",
      "google-cloud-platform",
      "infrastructure-as-code",
      "osinfra",
      "platform-team",
      "terraform"
    ]
  }

  "google-cloud-kitchen-terraform" = {
    description = "Infrastructure as Code (IaC) example for Google Cloud Platform Kitchen-Terraform testing."

    topics = [
      "google-cloud-platform",
      "infrastructure-as-code",
      "kitchen-terraform",
      "osinfra",
      "terraform",
      "testing"
    ]
  }

  "google-cloud-audit-logging" = {
    description = "Infrastructure as Code (IaC) example for Google Cloud Platform audit logging."

    topics = [
      "google-cloud-landing-zone-platform",
      "google-cloud-platform",
      "infrastructure-as-code",
      "osinfra",
      "terraform"
    ]
  }

  "google-cloud-observability" = {
    description = "Infrastructure as Code (IaC) example for Google Cloud Platform observability."

    topics = [
      "google-cloud-platform",
      "infrastructure-as-code",
      "osinfra",
      "terraform"
    ]
  }

  "google-cloud-services" = {
    description = "Infrastructure as Code (IaC) example for Google Cloud Platform services."

    topics = [
      "google-cloud-platform",
      "infrastructure-as-code",
      "osinfra",
      "terraform"
    ]
  }

  "google-cloud-terraform-backend" = {
    description = "Infrastructure as Code (IaC) example for Google Cloud Platform Terraform backend."

    topics = [
      "google-cloud-landing-zone-platform",
      "google-cloud-platform",
      "infrastructure-as-code",
      "osinfra",
      "platform-team",
      "terraform"
    ]
  }

  "google-cloud-workload-identity" = {
    description = "Infrastructure as Code (IaC) example for Google Cloud Platform workload identity."

    topics = [
      "google-cloud-landing-zone-platform",
      "google-cloud-platform",
      "infrastructure-as-code",
      "osinfra",
      "platform-team",
      "terraform"
    ]
  }

  "terraform-google-cloud-dns" = {
    description = "Terraform example module for Google Cloud Platform Cloud DNS."

    topics = [
      "google-cloud-platform",
      "infrastructure-as-code",
      "kitchen-terraform",
      "osinfra",
      "terraform"
    ]
  }

  "terraform-google-cloud-nat" = {
    description = "Terraform example module for Google Cloud Platform Cloud NAT."

    topics = [
      "google-cloud-platform",
      "infrastructure-as-code",
      "kitchen-terraform",
      "osinfra",
      "terraform"
    ]
  }

  "terraform-google-cloud-sql" = {
    description = "Terraform example module for Google Cloud Platform Cloud SQL instance."

    topics = [
      "google-cloud-platform",
      "infrastructure-as-code",
      "kitchen-terraform",
      "osinfra",
      "terraform"
    ]
  }

  "terraform-google-kubernetes-engine-autopilot" = {
    description = "Terraform example module for Google Cloud Platform Kubernetes Engine Autopilot cluster."

    topics = [
      "google-cloud-platform",
      "infrastructure-as-code",
      "kitchen-terraform",
      "kubernetes",
      "osinfra",
      "terraform"
    ]
  }

  "terraform-google-project" = {
    description = "Terraform example module for Google Cloud Platform project."

    topics = [
      "google-cloud-platform",
      "infrastructure-as-code",
      "kitchen-terraform",
      "osinfra",
      "terraform"
    ]
  }

  "terraform-google-storage-bucket" = {
    description = "Terraform example module for Google Cloud Platform Storage bucket."

    topics = [
      "google-cloud-platform",
      "infrastructure-as-code",
      "kitchen-terraform",
      "osinfra",
      "terraform"
    ]
  }

  "terraform-google-subnet" = {
    description = "Terraform example module for Google Cloud Platform subnet."

    topics = [
      "google-cloud-platform",
      "infrastructure-as-code",
      "kitchen-terraform",
      "osinfra",
      "terraform"
    ]
  }

  "terraform-google-vpc" = {
    description = "Terraform example module for Google Cloud Platform VPC."

    topics = [
      "google-cloud-platform",
      "infrastructure-as-code",
      "kitchen-terraform",
      "osinfra",
      "terraform"
    ]
  }
}

team_children = {
  "platform-google-cloud-landing-zone-repository-admins" = {
    description     = "Platform Team: responsible for Google Cloud Landing Zone repository administration."
    parent_team_key = "platform-google-cloud-landing-zone"
    permission      = "admin"
    maintainers     = ["brettcurtis"]
    members         = []

    repositories = [
      "google-cloud-audit-logging",
      "google-cloud-terraform-backend",
      "google-cloud-workload-identity",
      "google-cloud-hierarchy"
    ]
  }

  "platform-google-cloud-landing-zone-approvers-nonprod" = {
    description     = "Platform Team: responsible for Google Cloud Landing Zone workflow approvals in the Non-Production environments."
    parent_team_key = "platform-google-cloud-landing-zone"
    maintainers     = ["brettcurtis"]
    members         = []
  }

  "platform-google-cloud-landing-zone-approvers-prod" = {
    description     = "Platform Team: responsible for Google Cloud Landing Zone workflow approvals in the Production environment."
    parent_team_key = "platform-google-cloud-landing-zone"
    maintainers     = ["brettcurtis"]
    members         = []
  }

  "platform-google-cloud-landing-zone-approvers-sb" = {
    description     = "Platform Team: responsible for Google Cloud Landing Zone workflow approvals in the Sandbox environment."
    parent_team_key = "platform-google-cloud-landing-zone"
    maintainers     = ["brettcurtis"]
    members         = []
  }

  "platform-github-repository-admins" = {
    description     = "Platform Team: responsible for GitHub repository administration."
    parent_team_key = "platform-github"
    permission      = "admin"
    maintainers     = ["brettcurtis"]
    members         = []

    repositories = [
      "github-kitchen-terraform-action",
      "github-misc-called-workflows",
      "github-organization-management",
      "github-terraform-codespace",
      "github-terraform-gcp-called-workflows"
    ]
  }

  "platform-github-approvers" = {
    description     = "Platform Team: responsible for GitHub workflow approvals."
    parent_team_key = "platform-github"
    maintainers     = ["brettcurtis"]
    members         = []
  }
}

team_parents = {
  "owners" = {
    description = "Owners of the osinfra.io organization."
    maintainers = ["brettcurtis"]
    members     = []
  }

  "platform-github" = {
    description = "Platform Team: responsible for the GitHub organization and code reviews."
    maintainers = ["brettcurtis"]
    members     = []
    permission  = "push"

    repositories = [
      "github-kitchen-terraform-action",
      "github-misc-called-workflows",
      "github-organization-management",
      "github-terraform-codespace",
      "github-terraform-gcp-called-workflows"
    ]

    review_request_delegation = true
  }

  "platform-google-cloud-landing-zone" = {
    description = "Platform Team: responsible the Google Cloud Landing Zone and code reviews."
    maintainers = ["brettcurtis"]
    members     = []
    permission  = "push"

    repositories = [
      "google-cloud-audit-logging",
      "google-cloud-terraform-backend",
      "google-cloud-workload-identity",
      "google-cloud-hierarchy"
    ]

    review_request_delegation = true
  }

  "enabling-security" = {
    description = "Enabling Team: responsible for the overall security of the GitHub organization and helping stream-aligned teams to overcome obstacles."
    maintainers = ["brettcurtis"]
    members     = []
  }
}
