# Local Values
# https://www.terraform.io/language/values/locals

locals {
  admins = {
    for i in var.admins : i => "admin"
  }

  branch_protection = {
    for k, v in var.repositories : k => v if v.enable_branch_protection
  }

  members = {
    for i in var.members : i => "member"
  }

  users = merge(local.admins, local.members)
}
