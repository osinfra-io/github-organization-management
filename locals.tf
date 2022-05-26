# Local Values
# https://www.terraform.io/language/values/locals

locals {
  admins  = { for user in var.admins : user => "admin" }
  members = { for user in var.members : user => "member" }

  users = merge(local.admins, local.members)
}
