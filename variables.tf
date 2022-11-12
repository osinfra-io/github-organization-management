# Input Variables
# https://www.terraform.io/language/values/variables

variable "admins" {
  description = "A set of admins to add to the organization"
  type        = set(string)
  default = [
    "brettcurtis",
    "johnbooth"
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
  default = [
    "osinfra-sa",
  ]
}

variable "repos" {
  description = "Map of repositories to create"
  type        = map(any)
}
