
terraform {
  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"
    }
  }
}

resource "genesyscloud_architect_user_prompt" "welcome_greeting_1" {
  name        = "Nexus_Greeting_1"
  description = "Welcome greeting for all callers"
  resources {
    language   = "en-us"
    text       = "Good day. Thank you for calling."
    tts_string = "Good day. Thank you for calling."
  }
}