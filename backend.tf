# Backend Configuration
# https://www.terraform.io/language/settings/backends/configuration

terraform {

  # Google Cloud Storage
  # https://www.terraform.io/language/settings/backends/gcs

  backend "gcs" {
    prefix = "github-organization-management"
  }
}
