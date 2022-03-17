terraform {
  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"

    }
  }
}

resource "genesyscloud_routing_email_route" "nexus_route" {
  domain_id    = data.genesyscloud_routing_email_domain.csp_email_domain.id
  pattern      = "nexus"
  from_name    = "Nexus Support"
  from_email   = "nexus@csp.mypurecloud.com"
  flow_id      = data.genesyscloud_flow.email_flow.id
  spam_flow_id = data.genesyscloud_flow.email_flow.id
  reply_email_address {
    domain_id = data.genesyscloud_routing_email_domain.csp_email_domain.id
    route_id  = genesyscloud_routing_email_route.nexus_route.id
  }
}

data "genesyscloud_flow" "email_flow" {
  name = "Nexus Email Flow"
}

data "genesyscloud_routing_email_domain" "csp_email_domain" {
  name      = "csp.mypurecloud.com"
  subdomain = false
}

data "genesyscloud_routing_email_domain" "genesyscsptesting_email_domain" {
  name      = "genesyscsptesting.mypurecloud.com"
  subdomain = false
}
