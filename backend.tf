terraform {
  backend "gcs" {
    prefix = "github-organization-management"
  }
}
