# Input Variables
# https://www.terraform.io/language/values/variables

variable "admins" {
  description = "A set of admins to add to the organization"
  type        = set(string)
}

variable "discord_webhook_api_key" {
  description = "The Discord API key used for creating webhooks"
  type        = string
  sensitive   = true
}

variable "datadog_webhook_api_key" {
  description = "The Datadog API key used for creating webhooks"
  type        = string
  sensitive   = true
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
    enable_discord_webhook   = optional(bool, true)
    enable_datadog_webhook   = optional(bool, true)
    has_discussions          = optional(bool, false)

    labels = optional(list(object({
      color       = string
      description = string
      name        = string
    })))

    is_template                     = optional(bool, false)
    push_allowances                 = optional(list(string), [])
    required_status_checks_contexts = optional(list(string), [])
    template                        = optional(string)
    topics                          = optional(list(string))

    # In most cases, the visibility of your organizations repository should be private.
    # However, we are keeping our code public to encourage others to learn from our work.

    visibility = optional(string, "public")
  }))
}

variable "team_children" {
  description = "Map of child teams to create"
  type = map(object({
    description     = string
    maintainers     = optional(set(string), [])
    members         = optional(set(string), [])
    permission      = optional(string, null)
    parent_team_key = string
    repositories    = optional(set(string), [])
  }))
}

variable "team_parents" {
  description = "Map of parent teams to create"
  type = map(object({
    description               = string
    maintainers               = optional(set(string), [])
    members                   = optional(set(string), [])
    permission                = optional(string, null)
    privacy                   = optional(string, "closed")
    repositories              = optional(set(string), [])
    review_request_delegation = optional(bool, false)
  }))
}
