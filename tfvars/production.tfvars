admins = [
  "brettcurtis"
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
    description              = "A Special Repository."
    enable_branch_protection = false
    enable_datadog_webhook   = false

    topics = [
      "github",
      "github-organization-management-platform",
      "osinfra",
      "platform-team"
    ]

    push_allowances = [
      "osinfra-io/platform-github"
    ]
  }

  ".github-private" = {
    description              = "A Special Repository."
    enable_branch_protection = false
    enable_datadog_webhook   = false

    topics = [
      "github",
      "github-organization-management-platform",
      "osinfra",
      "platform-team"
    ]

    push_allowances = [
      "osinfra-io/platform-github"
    ]

    visibility = "private"
  }

  "argo-cd" = {
    description = "Argo CD Infrastructure as Code (IaC) example for the osinfra.io organization."

    topics = [
      "argo-cd",
      "helm",
      "infrastructure-as-code",
      "kubernetes",
      "osinfra",
      "platform-team",
      "terraform"
    ]
  }

  "backstage" = {
    description = "Backstage Infrastructure as Code (IaC) example for the osinfra.io organization."

    topics = [
      "backstage",
      "helm",
      "infrastructure-as-code",
      "kubernetes",
      "osinfra",
      "platform-team",
      "terraform"
    ]
  }

  "ct-google-cloud-kubernetes" = {
    description = "Kubernetes Infrastructure as Code (IaC) example for the Customer Trust stream-aligned team."

    topics = [
      "customer-trust",
      "google-cloud-platform",
      "infrastructure-as-code",
      "kubernetes",
      "osinfra",
      "stream-aligned-team",
      "terraform"
    ]
  }

  "datadog-organization-management" = {
    description = "Infrastructure as Code (IaC) example for a Datadog organization."

    topics = [
      "infrastructure-as-code",
      "datadog",
      "osinfra",
      "platform-team",
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

  "github-misc-called-workflows" = {
    description = "Miscellaneous Reusable GitHub Called Workflow examples."

    topics = [
      "github",
      "github-actions",
      "github-organization-management-platform",
      "osinfra",
      "platform-team"
    ]

    push_allowances = [
      "osinfra-io/platform-github"
    ]
  }

  "github-organization-discussions" = {
    description              = "This repository is for osinfra.io GitHub organization discussions."
    enable_branch_protection = false
    enable_datadog_webhook   = false
    has_discussions          = true

    topics = [
      "github",
      "github-organization-management-platform",
      "osinfra",
      "platform-team"
    ]

    push_allowances = [
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

    push_allowances = [
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

    push_allowances = [
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

    push_allowances = [
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

    push_allowances = [
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

    push_allowances = [
      "osinfra-io/platform-github"
    ]
  }

  "istio-test" = {
    description = "An example Istio test application that shows information about the Google Kubernetes Engine (GKE) cluster."

    topics = [
      "golang",
      "google-cloud-platform",
      "infrastructure-as-code",
      "kubernetes",
      "osinfra",
      "platform-team",
      "terraform"
    ]

    push_allowances = [
      "osinfra-io/platform-google-cloud-kubernetes"
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

    push_allowances = [
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

    push_allowances = [
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

    push_allowances = [
      "osinfra-io/platform-google-cloud-kubernetes"
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

    push_allowances = [
      "osinfra-io/platform-google-cloud-landing-zone"
    ]
  }

  "google-cloud-services" = {
    description = "Infrastructure as Code (IaC) example for Google Cloud Platform services."

    topics = [
      "google-cloud-landing-zone-platform",
      "google-cloud-platform",
      "infrastructure-as-code",
      "osinfra",
      "platform-team",
      "terraform"
    ]

    push_allowances = [
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

    push_allowances = [
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

    push_allowances = [
      "osinfra-io/platform-google-cloud-landing-zone"
    ]
  }

  "inner-source" = {
    description              = "InnerSource Team: responsible for InnerSource collaboration."
    enable_branch_protection = false
    enable_datadog_webhook   = false

    topics = [
      "infrastructure-as-code",
      "osinfra",
      "terraform"
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

  "openbao" = {
    description = "OpenBao Infrastructure as Code (IaC) example for the osinfra.io organization."

    topics = [
      "infrastructure-as-code",
      "helm",
      "kubernetes",
      "osinfra",
      "platform-team",
      "terraform"
    ]
  }

  "platform-argo-cd" = {
    description              = "Platform Team: responsible for Argo CD."
    enable_branch_protection = false
    enable_datadog_webhook   = false

    topics = [
      "argo-cd",
      "osinfra",
      "platform-team"
    ]
  }

  "platform-backstage" = {
    description              = "Platform Team: responsible for Backstage."
    enable_branch_protection = false
    enable_datadog_webhook   = false

    topics = [
      "backstage",
      "osinfra",
      "platform-team"
    ]
  }

  "platform-datadog" = {
    description              = "Platform Team: responsible for Datadog."
    enable_branch_protection = false
    enable_datadog_webhook   = false

    topics = [
      "datadog",
      "osinfra",
      "platform-team"
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

  "platform-openbao" = {
    description              = "Platform Team: responsible for OpenBao."
    enable_branch_protection = false
    enable_datadog_webhook   = false

    topics = [
      "openbao",
      "osinfra",
      "platform-team"
    ]
  }

  "pre-commit-hooks" = {
    description            = "Pre-commit hooks for Infrastructure as Code (IaC) tools."
    enable_datadog_webhook = false

    topics = [
      "golang",
      "infrastructure-as-code",
      "osinfra",
      "pre-commit",
      "terraform"
    ]
  }

  "stream-customer-trust" = {
    description              = "Stream Aligned Team: responsible for the Customer Trust stream."
    enable_branch_protection = false
    enable_datadog_webhook   = false

    topics = [
      "customer-trust",
      "osinfra",
      "stream-aligned-team"
    ]
  }

  "terraform-core-helpers" = {
    description = "OpenTofu example module for helpers."

    topics = [
      "infrastructure-as-code",
      "osinfra",
      "terraform",
      "terraform-child-module"
    ]
  }

  "terraform-datadog-google-integration" = {
    description = "OpenTofu example module for Datadog Google Cloud Platform integration."

    topics = [
      "datadog",
      "google-cloud-platform",
      "infrastructure-as-code",
      "osinfra",
      "terraform",
      "terraform-child-module"
    ]
  }

  "terraform-google-cloud-sql" = {
    description = "OpenTofu example module for Google Cloud Platform Cloud SQL instance."

    topics = [
      "google-cloud-platform",
      "infrastructure-as-code",
      "osinfra",
      "terraform",
      "terraform-child-module"
    ]
  }

  "opentofu-google-kubernetes-engine" = {
    description = "OpenTofu example module for Google Cloud Platform Kubernetes Engine cluster."

    topics = [
      "google-cloud-platform",
      "infrastructure-as-code",
      "kubernetes",
      "osinfra",
      "terraform",
      "terraform-child-module"
    ]
  }

  "terraform-google-network" = {
    description = "OpenTofu example module for Google Cloud Platform network."

    topics = [
      "google-cloud-platform",
      "infrastructure-as-code",
      "osinfra",
      "terraform",
      "terraform-child-module"
    ]
  }

  "opentofu-google-project" = {
    description = "OpenTofu example module for Google Cloud Platform project."

    topics = [
      "google-cloud-platform",
      "infrastructure-as-code",
      "osinfra",
      "terraform",
      "terraform-child-module"
    ]
  }

  "terraform-google-storage-bucket" = {
    description = "OpenTofu example module for Google Cloud Platform Storage bucket."

    topics = [
      "google-cloud-platform",
      "infrastructure-as-code",
      "osinfra",
      "terraform",
      "terraform-child-module"
    ]
  }

  "opentofu-kubernetes-cert-manager" = {
    description = "OpenTofu example module for Kubernetes cert-manager."

    topics = [
      "cert-manager",
      "helm",
      "infrastructure-as-code",
      "kubernetes",
      "osinfra",
      "terraform",
      "terraform-child-module"
    ]
  }

  "opentofu-kubernetes-datadog-operator" = {
    description = "OpenTofu example module for Kubernetes Datadog operator."

    topics = [
      "datadog",
      "infrastructure-as-code",
      "helm",
      "kubernetes",
      "osinfra",
      "terraform",
      "terraform-child-module"
    ]
  }

  "opentofu-kubernetes-istio" = {
    description = "OpenTofu example module for Kubernetes Istio service mesh."

    topics = [
      "helm",
      "infrastructure-as-code",
      "istio",
      "kubernetes",
      "osinfra",
      "terraform",
      "terraform-child-module"
    ]
  }

  "opentofu-kubernetes-opa-gatekeeper" = {
    description = "OpenTofu example module for Kubernetes Open Policy Agent (OPA) Gatekeeper."

    topics = [
      "gatekeeper",
      "helm",
      "infrastructure-as-code",
      "kubernetes",
      "opa",
      "osinfra",
      "terraform",
      "terraform-child-module"
    ]
  }
}

team_children = {
  "enabling-security-admins" = {
    description     = "Enabling Team: responsible for Security repository administration."
    parent_team_key = "enabling-security"
    permission      = "admin"
    maintainers     = ["brettcurtis"]
    members         = []

    repositories = [
      "enabling-security"
    ]
  }

  "inner-source-admins" = {
    description     = "InnerSource Team: responsible for InnerSource repository administration."
    parent_team_key = "inner-source"
    permission      = "admin"
    maintainers     = ["brettcurtis"]
    members         = []

    repositories = [
      "inner-source",
      "terraform-core-helpers",
      "terraform-datadog-google-integration",
      "terraform-google-cloud-sql",
      "opentofu-google-kubernetes-engine",
      "terraform-google-network",
      "opentofu-google-project",
      "terraform-google-storage-bucket",
      "opentofu-kubernetes-cert-manager",
      "opentofu-kubernetes-datadog-operator",
      "opentofu-kubernetes-istio",
      "opentofu-kubernetes-opa-gatekeeper"
    ]
  }
  "platform-argo-cd-approvers-prod" = {
    description     = "Platform Team: responsible for Argo CD workflow approvals in the Production environment."
    parent_team_key = "platform-argo-cd"
    maintainers     = ["brettcurtis"]
    members         = []
  }

  "platform-argo-cd-approvers-sb" = {
    description     = "Platform Team: responsible for Argo CD workflow approvals in the Sandbox environment."
    parent_team_key = "platform-argo-cd"
    maintainers     = ["brettcurtis"]
    members         = []
  }

  "platform-argo-cd-repository-admins" = {
    description     = "Platform Team: responsible for Argo CD repository administration."
    parent_team_key = "platform-argo-cd"
    permission      = "admin"
    maintainers     = ["brettcurtis"]
    members         = []

    repositories = [
      "argo-cd",
      "platform-argo-cd"
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
      "backstage",
      "platform-backstage"
    ]
  }

  "platform-datadog-approvers-prod" = {
    description     = "Platform Team: responsible for Datadog workflow approvals in the Production environment."
    parent_team_key = "platform-datadog"
    maintainers     = ["brettcurtis"]
    members         = []
  }

  "platform-datadog-repository-admins" = {
    description     = "Platform Team: responsible for Datadog repository administration."
    parent_team_key = "platform-datadog"
    permission      = "admin"
    maintainers     = ["brettcurtis"]
    members         = []

    repositories = [
      "datadog-organization-management"
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

  "platform-google-cloud-kubernetes-approvers-nonprod" = {
    description     = "Platform Team: responsible for Google Cloud Kubernetes workflow approvals in the Non-Production environments."
    parent_team_key = "platform-google-cloud-kubernetes"
    maintainers     = ["brettcurtis"]
    members         = []
  }

  "platform-google-cloud-kubernetes-approvers-prod" = {
    description     = "Platform Team: responsible for Google Cloud Kubernetes workflow approvals in the Production environment."
    parent_team_key = "platform-google-cloud-kubernetes"
    maintainers     = ["brettcurtis"]
    members         = []
  }

  "platform-google-cloud-kubernetes-approvers-sb" = {
    description     = "Platform Team: responsible for Google Cloud Kubernetes workflow approvals in the Sandbox environment."
    parent_team_key = "platform-google-cloud-kubernetes"
    maintainers     = ["brettcurtis"]
    members         = []
  }

  "platform-google-cloud-kubernetes-repository-admins" = {
    description     = "Platform Team: responsible for Google Cloud Kubernetes repository administration."
    parent_team_key = "platform-google-cloud-kubernetes"
    permission      = "admin"
    maintainers     = ["brettcurtis"]
    members         = []

    repositories = [
      "istio-test",
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
      "google-cloud-kubernetes",
      "google-cloud-networking",
      "google-cloud-services",
      "google-cloud-terraform-backend",
      "google-cloud-workload-identity",
      "platform-google-cloud-landing-zone"
    ]
  }

  "platform-openbao-approvers-nonprod" = {
    description     = "Platform Team: responsible for OpenBao workflow approvals in the Non-Production environments."
    parent_team_key = "platform-openbao"
    maintainers     = ["brettcurtis"]
    members         = []
  }

  "platform-openbao-approvers-prod" = {
    description     = "Platform Team: responsible for OpenBao workflow approvals in the Production environment."
    parent_team_key = "platform-openbao"
    maintainers     = ["brettcurtis"]
    members         = []
  }

  "platform-openbao-approvers-sb" = {
    description     = "Platform Team: responsible for OpenBao workflow approvals in the Sandbox environment."
    parent_team_key = "platform-openbao"
    maintainers     = ["brettcurtis"]
    members         = []
  }

  "platform-openbao-repository-admins" = {
    description     = "Platform Team: responsible for OpenBao repository administration."
    parent_team_key = "platform-openbao"
    permission      = "admin"
    maintainers     = ["brettcurtis"]
    members         = []

    repositories = [
      "openbao",
      "platform-openbao"
    ]
  }

  "stream-customer-trust-approvers-nonprod" = {
    description     = "Stream Aligned Team: responsible for Customer Trust workflow approvals in the Non-Production environments."
    parent_team_key = "stream-customer-trust"
    maintainers     = ["brettcurtis"]
    members         = []
  }

  "stream-customer-trust-approvers-prod" = {
    description     = "Stream Aligned Team: responsible for Customer Trust workflow approvals in the Production environment."
    parent_team_key = "stream-customer-trust"
    maintainers     = ["brettcurtis"]
    members         = []
  }

  "stream-customer-trust-approvers-sb" = {
    description     = "Stream Aligned Team: responsible for Customer Trust workflow approvals in the Sandbox environment."
    parent_team_key = "stream-customer-trust"
    maintainers     = ["brettcurtis"]
    members         = []
  }

  "stream-customer-trust-repository-admins" = {
    description     = "Stream Aligned Team: responsible for Customer Trust repository administration."
    parent_team_key = "stream-customer-trust"
    permission      = "admin"
    maintainers     = ["brettcurtis"]
    members         = []

    repositories = [
      "ct-google-cloud-kubernetes",
      "stream-customer-trust"
    ]
  }
}

team_parents = {
  "inner-source" = {
    description = "This is the catch all team for InnerSource collaboration."
    maintainers = ["brettcurtis"]
    members     = []
    permission  = "push"

    repositories = [
      "inner-source",
      "terraform-core-helpers",
      "terraform-datadog-google-integration",
      "terraform-google-cloud-sql",
      "opentofu-google-kubernetes-engine",
      "terraform-google-network",
      "opentofu-google-project",
      "terraform-google-storage-bucket",
      "opentofu-kubernetes-cert-manager",
      "opentofu-kubernetes-datadog-operator",
      "opentofu-kubernetes-istio",
      "opentofu-kubernetes-opa-gatekeeper"
    ]
  }

  "owners" = {
    description = "Owners of the osinfra.io organization."
    maintainers = ["brettcurtis"]
    members     = []
  }

  "platform-argo-cd" = {
    description = "Platform Team: responsible for the Argo CD application and code reviews."
    maintainers = ["brettcurtis"]
    members     = []
    permission  = "push"

    repositories = [
      "argo-cd",
      "platform-argo-cd"
    ]

    review_request_delegation = true
  }

  "platform-backstage" = {
    description = "Platform Team: responsible for the Backstage application and code reviews."
    maintainers = ["brettcurtis"]
    members     = []
    permission  = "push"

    repositories = [
      "backstage",
      "platform-backstage"
    ]

    review_request_delegation = true
  }

  "platform-datadog" = {
    description = "Platform Team: responsible for the Datadog application and code reviews."
    maintainers = ["brettcurtis"]
    members     = []
    permission  = "push"

    repositories = [
      "datadog-organization-management",
      "platform-datadog"
    ]

    review_request_delegation = true
  }

  "platform-github" = {
    description = "Platform Team: responsible for the GitHub organization and code reviews."
    maintainers = ["brettcurtis"]
    members     = []
    permission  = "push"

    repositories = [
      ".github",
      ".github-private",
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

  "platform-google-cloud-kubernetes" = {
    description = "Platform Team: responsible the Google Cloud Kubernetes and code reviews."
    maintainers = ["brettcurtis"]
    members     = []
    permission  = "push"

    repositories = [
      "istio-test",
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
      "google-cloud-networking",
      "google-cloud-services",
      "google-cloud-terraform-backend",
      "google-cloud-workload-identity",
      "platform-google-cloud-landing-zone"
    ]

    review_request_delegation = true
  }

  "platform-openbao" = {
    description = "Platform Team: responsible for the OpenBao application and code reviews."
    maintainers = ["brettcurtis"]
    members     = []
    permission  = "push"

    repositories = [
      "openbao",
      "platform-openbao"
    ]

    review_request_delegation = true
  }

  "stream-customer-trust" = {
    description = "Stream Aligned Team: responsible for the Customer Trust stream and code reviews."
    maintainers = ["brettcurtis"]
    members     = []
    permission  = "push"

    repositories = [
      "ct-google-cloud-kubernetes",
      "stream-customer-trust"
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
