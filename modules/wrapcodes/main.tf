
terraform {
  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"

    }
  }
}

###
#
#  Description:
#  
#  Dynamically creates a wrapup code based on the classifier_wrapcode_names variable passed into module.  
#  This module demonstrates how Terraform can be used to create several objects using their scripting
#  language.
###
resource "genesyscloud_routing_wrapupcode" "wrapcodes" {
  for_each                 = toset(var.classifier_wrapcode_names)
  name                     = each.value
}
