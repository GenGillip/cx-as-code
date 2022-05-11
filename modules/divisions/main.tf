
terraform {
  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"
    }
  }
}

resource "genesyscloud_auth_division" "nexus" {
  name        = "Nexus"
  description = "Custom Division for API testing"
}


## Datasource
# data "genesyscloud_auth_division" "marketing" {
#   name = "marketing"
# }