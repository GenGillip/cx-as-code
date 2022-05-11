
terraform {
  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"
    }
  }
}

resource "genesyscloud_auth_division" "nexus_1" {
  name        = "Nexus Test"
  description = "Custom Division for API testing"
}


## Datasource
# data "genesyscloud_auth_division" "marketing" {
#   name = "marketing"
# }

##try 3