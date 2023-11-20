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
    description            = "A Special Repository."
    enable_datadog_webhook = false

    topics = [
      "github",
      "github-organization-management-platform",
      "osinfra",
      "platform-team"
    ]

    push_restrictions = [
      "osinfra-io/platform-github"
    ]
  }

  ".github-private" = {
    description            = "A Special Repository."
    enable_datadog_webhook = false

    topics = [
      "github",
      "github-organization-management-platform",
      "osinfra",
      "platform-team"
    ]

    push_restrictions = [
      "osinfra-io/platform-github"
    ]

    visibility = "private"
  }

  "backstage" = {
    description = "Infrastructure as Code (IaC) example for Backstage."
    visibility  = "public"

    topics = [
      "backstage",
      "google-cloud-platform",
      "infrastructure-as-code",
      "osinfra",
      "platform-team",
      "terraform"
    ]

    push_restrictions = [
      "osinfra-io/platform-backstage"
    ]
  }

  "ca-google-kubernetes" = {
    description = "Kubernetes Infrastructure as Code (IaC) example for the Customer Acquisition stream-aligned team."

    topics = [
      "customer-acquisition",
      "google-cloud-platform",
      "infrastructure-as-code",
      "kubernetes",
      "osinfra",
      "stream-aligned-team",
      "terraform"
    ]
  }

  "diagrams" = {
    description            = "Diagrams using diagrams.net a free and open source cross-platform graph drawing software."
    enable_datadog_webhook = false

    topics = [
      "diagrams",
      "osinfra"
    ]
  }

  "enabling-security" = {
    description              = "Enabling Team: responsible for the overall security of the organization and helping other teams types to overcome obstacles."
    enable_branch_protection = false
    enable_datadog_webhook   = false

    topics = [
      "osinfra",
      "enabling-team",
      "security"
    ]
  }

  "gitbook-docs" = {
    description              = "GitBook documentation for the osinfra.io organization."
    enable_branch_protection = false
    enable_datadog_webhook   = false

    topics = [
      "gitbook",
      "osinfra"
    ]
  }

  "github-kitchen-terraform-action" = {
    description = "Kitchen-Terraform GitHub Action."

    topics = [
      "chef-inspec",
      "github",
      "github-actions",
      "github-organization-management-platform",
      "infrastructure-as-code",
      "kitchen-terraform",
      "osinfra",
      "platform-team",
      "terraform"
    ]

    push_restrictions = [
      "osinfra-io/platform-github"
    ]
  }

  "github-misc-called-workflows" = {
    description = "Miscellaneous Reusable GitHub Called Workflow examples."

    topics = [
      "github",
      "github-actions",
      "github-organization-management-platform",
      "osinfra",
      "platform-team"
    ]

    push_restrictions = [
      "osinfra-io/platform-github"
    ]
  }

  "github-organization-discussions" = {
    description            = "This repository is for osinfra.io GitHub organization discussions."
    enable_datadog_webhook = false
    has_discussions        = true

    topics = [
      "github",
      "github-organization-management-platform",
      "osinfra",
      "platform-team"
    ]

    push_restrictions = [
      "osinfra-io/platform-github"
    ]
  }

  "github-organization-management" = {
    description = "Infrastructure as Code (IaC) example for a GitHub organization."

    topics = [
      "github",
      "github-organization-management-platform",
      "infrastructure-as-code",
      "osinfra",
      "platform-team",
      "terraform"
    ]

    push_restrictions = [
      "osinfra-io/platform-github"
    ]
  }

  "github-terraform-child-module-template" = {
    description            = "Terraform child module template for GitHub repositories."
    enable_datadog_webhook = false
    is_template            = true

    topics = [
      "github",
      "github-organization-management-platform",
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
    description            = "GitHub Codespace example for Terraform Infrastructure as Code (IaC) Development."
    enable_datadog_webhook = false

    topics = [
      "github",
      "github-codespaces",
      "github-organization-management-platform",
      "infrastructure-as-code",
      "osinfra",
      "platform-team",
      "terraform"
    ]

    push_restrictions = [
      "osinfra-io/platform-github"
    ]
  }

  "github-terraform-gcp-called-workflows" = {
    description = "Reusable GitHub Called Workflow examples for Terraform and Google Cloud Platform."

    topics = [
      "github",
      "github-actions",
      "github-organization-management-platform",
      "infrastructure-as-code",
      "osinfra",
      "platform-team",
      "terraform"
    ]

    push_restrictions = [
      "osinfra-io/platform-github"
    ]
  }

  "github-terraform-gcp-root-module-template" = {
    description            = "Terraform Google Cloud Platform root module template for GitHub repositories."
    enable_datadog_webhook = false
    is_template            = true

    topics = [
      "github",
      "github-organization-management-platform",
      "google-cloud-platform",
      "infrastructure-as-code",
      "osinfra",
      "platform-team",
      "terraform"
    ]

    push_restrictions = [
      "osinfra-io/platform-github"
    ]
  }

  "google-cloud-audit-logging" = {
    description = "Infrastructure as Code (IaC) example for Google Cloud Platform audit logging."

    topics = [
      "google-cloud-landing-zone-platform",
      "google-cloud-platform",
      "infrastructure-as-code",
      "osinfra",
      "platform-team",
      "terraform"
    ]

    push_restrictions = [
      "osinfra-io/platform-google-cloud-landing-zone"
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

    push_restrictions = [
      "osinfra-io/platform-google-cloud-landing-zone"
    ]
  }

  "google-cloud-kitchen-terraform" = {
    description = "Infrastructure as Code (IaC) example for Google Cloud Platform Kitchen-Terraform testing."

    topics = [
      "google-cloud-landing-zone-platform",
      "google-cloud-platform",
      "infrastructure-as-code",
      "kitchen-terraform",
      "osinfra",
      "platform-team",
      "terraform",
      "testing"
    ]

    push_restrictions = [
      "osinfra-io/platform-google-cloud-landing-zone"
    ]
  }

  "google-cloud-kubernetes" = {
    description = "Infrastructure as Code (IaC) example for Google Cloud Platform Kubernetes resources."

    topics = [
      "google-cloud-kubernetes-platform",
      "google-cloud-platform",
      "infrastructure-as-code",
      "kubernetes",
      "osinfra",
      "platform-team",
      "terraform"
    ]

    push_restrictions = [
      "osinfra-io/platform-google-kubernetes"
    ]
  }

  "google-cloud-networking" = {
    description = "Infrastructure as Code (IaC) example for Google Cloud Platform networking resources."

    topics = [
      "google-cloud-landing-zone-platform",
      "google-cloud-platform",
      "infrastructure-as-code",
      "osinfra",
      "platform-team",
      "terraform"
    ]

    push_restrictions = [
      "osinfra-io/platform-google-cloud-landing-zone"
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

    push_restrictions = [
      "osinfra-io/platform-google-cloud-landing-zone"
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

    push_restrictions = [
      "osinfra-io/platform-google-cloud-landing-zone"
    ]
  }

  "istio" = {
    description = "Infrastructure as Code (IaC) example for Istio."

    topics = [
      "google-cloud-kubernetes-platform",
      "google-cloud-platform",
      "infrastructure-as-code",
      "istio",
      "kubernetes",
      "osinfra",
      "platform-team",
      "terraform"
    ]

    push_restrictions = [
      "osinfra-io/platform-isito"
    ]
  }

  "local-development-setup" = {
    description            = "Local development environment setup scripts example for working with Infrastructure as Code (IaC)."
    enable_datadog_webhook = false

    topics = [
      "docker",
      "infrastructure-as-code",
      "local-development",
      "osinfra",
      "terraform"
    ]
  }

  "platform-github" = {
    description              = "Platform Team: responsible for the GitHub organization."
    enable_branch_protection = false
    enable_datadog_webhook   = false

    topics = [
      "github",
      "osinfra",
      "platform-team"
    ]
  }

  "platform-google-cloud-kubernetes" = {
    description              = "Platform Team: responsible for the Google Kubernetes."
    enable_branch_protection = false
    enable_datadog_webhook   = false

    topics = [
      "google-cloud-kubernetes-platform",
      "google-cloud-platform",
      "kubernetes",
      "osinfra",
      "platform-team"
    ]
  }

  "platform-google-cloud-landing-zone" = {
    description              = "Platform Team: responsible for the Google Cloud Landing Zone."
    enable_branch_protection = false
    enable_datadog_webhook   = false

    topics = [
      "google-cloud-landing-zone-platform",
      "google-cloud-platform",
      "osinfra",
      "platform-team"
    ]
  }

  "stream-customer-acquisition" = {
    description              = "Stream Aligned Team: responsible for the Customer Acquisition stream."
    enable_branch_protection = false
    enable_datadog_webhook   = false

    topics = [
      "customer-acquisition",
      "osinfra",
      "stream-aligned-team"
    ]
  }

  "terraform-datadog-google-integration" = {
    description = "Terraform example module for Datadog Google Cloud Platform integration."

    topics = [
      "datadog",
      "google-cloud-platform",
      "infrastructure-as-code",
      "kitchen-terraform",
      "osinfra",
      "terraform",
      "terraform-child-module"
    ]
  }

  "terraform-google-cloud-dns" = {
    description = "Terraform example module for Google Cloud Platform Cloud DNS."

    topics = [
      "google-cloud-platform",
      "infrastructure-as-code",
      "kitchen-terraform",
      "osinfra",
      "terraform",
      "terraform-child-module"
    ]
  }

  "terraform-google-cloud-nat" = {
    description = "Terraform example module for Google Cloud Platform Cloud NAT."

    topics = [
      "google-cloud-platform",
      "infrastructure-as-code",
      "kitchen-terraform",
      "osinfra",
      "terraform",
      "terraform-child-module"
    ]
  }

  "terraform-google-cloud-sql" = {
    description = "Terraform example module for Google Cloud Platform Cloud SQL instance."

    topics = [
      "google-cloud-platform",
      "infrastructure-as-code",
      "kitchen-terraform",
      "osinfra",
      "terraform",
      "terraform-child-module"
    ]
  }

  "terraform-google-kubernetes-engine" = {
    description = "Terraform example module for Google Cloud Platform Kubernetes Engine cluster."

    topics = [
      "google-cloud-platform",
      "infrastructure-as-code",
      "kitchen-terraform",
      "kubernetes",
      "osinfra",
      "terraform",
      "terraform-child-module"
    ]
  }

  "terraform-google-subnet" = {
    description = "Terraform example module for Google Cloud Platform subnet."

    topics = [
      "google-cloud-platform",
      "infrastructure-as-code",
      "kitchen-terraform",
      "osinfra",
      "terraform",
      "terraform-child-module"
    ]
  }

  "terraform-google-project" = {
    description = "Terraform example module for Google Cloud Platform project."

    topics = [
      "google-cloud-platform",
      "infrastructure-as-code",
      "kitchen-terraform",
      "osinfra",
      "terraform",
      "terraform-child-module"
    ]
  }

  "terraform-google-storage-bucket" = {
    description = "Terraform example module for Google Cloud Platform Storage bucket."

    topics = [
      "google-cloud-platform",
      "infrastructure-as-code",
      "kitchen-terraform",
      "osinfra",
      "terraform",
      "terraform-child-module"
    ]
  }

  "terraform-google-vpc" = {
    description = "Terraform example module for Google Cloud Platform VPC."

    topics = [
      "google-cloud-platform",
      "infrastructure-as-code",
      "kitchen-terraform",
      "osinfra",
      "terraform",
      "terraform-child-module"
    ]
  }
}

team_children = {
  "enabling-security-admins" = {
    description     = "Enabling Team: responsible for Securty repository administration."
    parent_team_key = "enabling-security"
    permission      = "admin"
    maintainers     = ["brettcurtis"]
    members         = []

    repositories = [
      "enabling-security"
    ]
  }

  "platform-backstage-approvers-nonprod" = {
    description     = "Platform Team: responsible for Backstage workflow approvals in the Non-Production environments."
    parent_team_key = "platform-backstage"
    maintainers     = ["brettcurtis"]
    members         = []
  }

  "platform-backstage-approvers-prod" = {
    description     = "Platform Team: responsible for Backstage workflow approvals in the Production environment."
    parent_team_key = "platform-backstage"
    maintainers     = ["brettcurtis"]
    members         = []
  }

  "platform-backstage-approvers-sb" = {
    description     = "Platform Team: responsible for Backstage workflow approvals in the Sandbox environment."
    parent_team_key = "platform-backstage"
    maintainers     = ["brettcurtis"]
    members         = []
  }

  "platform-backstage-repository-admins" = {
    description     = "Platform Team: responsible for Backstage repository administration."
    parent_team_key = "platform-backstage"
    permission      = "admin"
    maintainers     = ["brettcurtis"]
    members         = []

    repositories = [
      "backstage"
      "platform-backstage"
    ]
  }

  "platform-google-kubernetes-approvers-nonprod" = {
    description     = "Platform Team: responsible for Google Cloud Kubernetes workflow approvals in the Non-Production environments."
    parent_team_key = "platform-google-kubernetes"
    maintainers     = ["brettcurtis"]
    members         = []
  }

  "platform-google-kubernetes-approvers-prod" = {
    description     = "Platform Team: responsible for Google Cloud Kubernetes workflow approvals in the Production environment."
    parent_team_key = "platform-google-kubernetes"
    maintainers     = ["brettcurtis"]
    members         = []
  }

  "platform-google-kubernetes-approvers-sb" = {
    description     = "Platform Team: responsible for Google Cloud Kubernetes workflow approvals in the Sandbox environment."
    parent_team_key = "platform-google-kubernetes"
    maintainers     = ["brettcurtis"]
    members         = []
  }

  "platform-google-kubernetes-repository-admins" = {
    description     = "Platform Team: responsible for Google Cloud Kubernetes repository administration."
    parent_team_key = "platform-google-kubernetes"
    permission      = "admin"
    maintainers     = ["brettcurtis"]
    members         = []

    repositories = [
      "google-cloud-kubernetes",
      "platform-google-cloud-kubernetes"
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

  "platform-google-cloud-landing-zone-repository-admins" = {
    description     = "Platform Team: responsible for Google Cloud Landing Zone repository administration."
    parent_team_key = "platform-google-cloud-landing-zone"
    permission      = "admin"
    maintainers     = ["brettcurtis"]
    members         = []

    repositories = [
      "google-cloud-audit-logging",
      "google-cloud-hierarchy",
      "google-cloud-kitchen-terraform",
      "google-cloud-kubernetes",
      "google-cloud-networking",
      "google-cloud-terraform-backend",
      "google-cloud-workload-identity",
      "platform-google-cloud-landing-zone"
    ]
  }

  "platform-github-approvers" = {
    description     = "Platform Team: responsible for GitHub workflow approvals."
    parent_team_key = "platform-github"
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
      ".github",
      ".github-private",
      "github-kitchen-terraform-action",
      "github-misc-called-workflows",
      "github-organization-management",
      "github-organization-discussions",
      "github-terraform-child-module-template",
      "github-terraform-codespace",
      "github-terraform-gcp-called-workflows",
      "github-terraform-gcp-root-module-template",
      "platform-github"
    ]
  }
  
  "stream-customer-acquisition-approvers-nonprod" = {
    description     = "Stream Aligned Team: responsible for Customer Acquisition workflow approvals in the Non-Production environments."
    parent_team_key = "stream-customer-acquisition"
    maintainers     = ["brettcurtis"]
    members         = []
  }

  "stream-customer-acquisition-approvers-prod" = {
    description     = "Stream Aligned Team: responsible for Customer Acquisition workflow approvals in the Production environment."
    parent_team_key = "stream-customer-acquisition"
    maintainers     = ["brettcurtis"]
    members         = []
  }

  "stream-customer-acquisition-approvers-sb" = {
    description     = "Stream Aligned Team: responsible for Customer Acquisition workflow approvals in the Sandbox environment."
    parent_team_key = "stream-customer-acquisition"
    maintainers     = ["brettcurtis"]
    members         = []
  }

  "stream-customer-acquisition-repository-admins" = {
    description     = "Stream Aligned Team: responsible for Customer Acquisition repository administration."
    parent_team_key = "stream-customer-acquisition"
    permission      = "admin"
    maintainers     = ["brettcurtis"]
    members         = []

    repositories = [
      "ca-google-kubernetes",
      "stream-customer-acquisition"
    ]
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
      ".github",
      ".github-private",
      "github-kitchen-terraform-action",
      "github-misc-called-workflows",
      "github-organization-discussions",
      "github-terraform-child-module-template",
      "github-organization-management",
      "github-terraform-codespace",
      "github-terraform-gcp-called-workflows",
      "github-terraform-gcp-root-module-template",
      "platform-github"
    ]

    review_request_delegation = true
  }

  "platform-google-kubernetes" = {
    description = "Platform Team: responsible the Google Cloud Kubernetes and code reviews."
    maintainers = ["brettcurtis"]
    members     = []
    permission  = "push"

    repositories = [
      "google-cloud-kubernetes",
      "platform-google-cloud-kubernetes"
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
      "google-cloud-hierarchy",
      "google-cloud-kitchen-terraform",
      "google-cloud-networking",
      "google-cloud-terraform-backend",
      "google-cloud-workload-identity",
      "platform-google-cloud-landing-zone"
    ]

    review_request_delegation = true
  }

  "stream-customer-acquisition" = {
    description = "Stream Aligned Team: responsible for the Customer Acquisition stream and code reviews."
    maintainers = ["brettcurtis"]
    members     = []
    permission  = "push"

    repositories = [
      "ca-google-kubernetes",
      "stream-customer-acquisition"
    ]
  }

  "enabling-security" = {
    description = "Enabling Team: Enabling Team: responsible for the overall security of the organization and helping other teams types to overcome obstacles."
    maintainers = ["brettcurtis"]
    members     = []
    permission  = "push"

    repositories = [
      "enabling-security"
    ]
  }
}
