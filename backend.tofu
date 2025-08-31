# Backend Configuration
# https://opentofu.org/docs/language/settings/backends/configuration

terraform {
  # Google Cloud Storage
  # https://opentofu.org/docs/language/settings/backends/gcs

  backend "gcs" {
    bucket             = var.state_bucket
    kms_encryption_key = var.state_kms_encryption_key
    prefix             = var.state_prefix
  }
}
