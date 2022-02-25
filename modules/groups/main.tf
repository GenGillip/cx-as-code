
terraform {
  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"

    }
  }
}


resource "genesyscloud_group" "nexus_group_1" {
  name          = "Nexus Terra Group"
  description   = "Group for Testiong Terraform"
  type          = "official"
  visibility    = "members"
  rules_visible = true
  owner_ids     = [data.genesyscloud_user.jeremy_gillip.id]
  member_ids    = []
}

data "genesyscloud_user" "jeremy_gillip" {
  email = "jeremy.gillip@genesys.com"
}