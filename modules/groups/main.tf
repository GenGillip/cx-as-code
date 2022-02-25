
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
  visibility    = "private"
  rules_visible = true
  owner_ids     = [genesyscloud_user.jeremy_gillip.id]
  member_ids    = []
  addresses {
    number = ""
    type   = ""
  }
}

data "genesyscloud_user" "jeremy_gillip" {
  email = "jeremy.gillip@genesys.com"
}