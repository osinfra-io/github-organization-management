# Input Variables
# https://www.terraform.io/language/values/variables

variable "admins" {
  description = "A set of admins to add to the organization"
  type        = set(string)
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
  type = map(object({
    description = string
    visibility  = string
  }))
}

variable "repositories" {
  description = "Map of repositories to create"
  type = map(object({
    description              = string
    enable_branch_protection = optional(bool, true)
    template                 = optional(string)
    topics                   = optional(list(string))

    # In most cases, the visibility of your organizations repository should be private.
    # However, we are keeping our code public to encourage others to learn from our work.

    visibility = optional(string, "public")
  }))
}
