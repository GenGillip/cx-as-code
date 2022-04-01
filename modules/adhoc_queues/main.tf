
terraform {
  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"

    }
  }
}

resource "genesyscloud_routing_queue" "nexuspoc_queue" {
  name                              = "Nexus POC Queue"
  division_id                       = data.genesyscloud_auth_division.home.id
  description                       = "POC test via terraform"
  acw_wrapup_prompt                 = "MANDATORY_TIMEOUT"
  acw_timeout_ms                    = 400000
  skill_evaluation_method           = "ALL"
  queue_flow_id                     = data.genesyscloud_flow.inqueue-flow.id
#   whisper_prompt_id                 = data.genesyscloud_architect_user_prompt.whisper.id
  auto_answer_only                  = true
  enable_transcription              = true
  enable_manual_assignment          = true
  calling_party_name                = "Nexus API"
#   outbound_messaging_sms_address_id = "c1bb045e-254d-4316-9d78-cea6849a3db4"
#   outbound_email_address {
#     domain_id = genesyscloud_routing_email_domain.main.id
#     route_id  = genesyscloud_routing_email_route.support.id
#   }
  media_settings_call {
    alerting_timeout_sec      = 20
    service_level_percentage  = 0.8
    service_level_duration_ms = 20000
  }
#   routing_rules {
#     operator     = "MEETS_THRESHOLD"
#     threshold    = 9
#     wait_seconds = 300
#   }
#   bullseye_rings {
#     expansion_timeout_seconds = 15.1
#     skills_to_remove          = [genesyscloud_routing_skill.test-skill.id]
#   }
#   default_script_ids = {
#     EMAIL = data.genesyscloud_script.email.id
#     CHAT  = data.genesyscloud_script.chat.id
#   }
#   members {
#     user_id  = genesyscloud_user.test-user.id
#     ring_num = 2
#   }
#   wrapup_codes = [genesyscloud_routing_wrapupcode.test-code.id]
}

data "genesyscloud_flow" "inqueue-flow" {
  name = "JG Dev InQueue"
}

data "genesyscloud_auth_division" "home" {
  name = "home"
}