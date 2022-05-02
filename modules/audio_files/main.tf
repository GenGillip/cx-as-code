
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

resource "genesyscloud_architect_user_prompt" "audio_2" {
  name        = "Nexus_Message_2"
  description = "Nexus_Message_2 Description"
  resources {
    language   = "en-us"
    text       = ""
    tts_string = ""
  }
}