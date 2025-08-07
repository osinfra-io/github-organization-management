# Backend Configuration
# https://opentofu.org/docs/language/settings/backends/configuration

terraform {

  # Google Cloud Storage
  # https://opentofu.org/docs/language/settings/backends/gcs/

  backend "gcs" {
    prefix = "github-organization-management"
  }
}
