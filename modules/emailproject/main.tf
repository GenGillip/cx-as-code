terraform {
  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"

    }
  }
}

###
# Description:  
#
#
# Note:  Currently we only allow a two email domain routes per Genesys Cloud organization.  You can contact CARE for an additional email route.  This
# command will fail if there is already have two email routes present.
###

resource "genesyscloud_routing_email_route" "nexus_route" {
  domain_id    = data.genesyscloud_routing_email_domain.csp_email_domain.id
  pattern      = "nexus"
  from_name    = "Nexus Support"
  from_email   = "nexus@csp.mypurecloud.com"
  #queue_id     = genesyscloud_routing_queue.test-queue.id
  #priority     = 5
  #skill_ids    = [genesyscloud_routing_skill.support.id]
  #language_id  = genesyscloud_routing_language.english.id
  flow_id      = data.genesyscloud_flow.email_flow.id
  spam_flow_id = data.genesyscloud_flow.email_flow.id
  # reply_email_address {
  #   domain_id = data.genesyscloud_routing_email_domain.csp_email_domain.id
  #   route_id  = genesyscloud_routing_email_route.nexus_route.id
  # }
  # auto_bcc {
  #   name  = "Test Support"
  #   email = "support@test.example.com"
  # }
}

resource "genesyscloud_routing_email_route" "nexustest_route" {
  domain_id    = data.genesyscloud_routing_email_domain.csp_email_domain.id
  pattern      = "nexustest"
  from_name    = "Nexus Test"
  from_email   = "nexustest@csp.mypurecloud.com"
  #queue_id     = genesyscloud_routing_queue.test-queue.id
  #priority     = 5
  #skill_ids    = [genesyscloud_routing_skill.support.id]
  #language_id  = genesyscloud_routing_language.english.id
  flow_id      = data.genesyscloud_flow.email_flow.id
  spam_flow_id = data.genesyscloud_flow.email_flow.id
  reply_email_address {
    domain_id = data.genesyscloud_routing_email_domain.csp_email_domain.id
    route_id  = "nexustest" #${genesyscloud_routing_email_route.nexustest_route.id}
  }
  # auto_bcc {
  #   name  = "Test Support"
  #   email = "support@test.example.com"
  # }
}

data "genesyscloud_flow" "email_flow" {
  name = "Nexus Email Flow"
}

data "genesyscloud_routing_email_domain" "csp_email_domain" {
  name      = "csp.mypurecloud.com"
}

data "genesyscloud_routing_email_domain" "genesyscsptesting_email_domain" {
  name      = "genesyscsptesting.mypurecloud.com"
}