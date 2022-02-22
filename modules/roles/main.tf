
terraform {
  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"

    }
  }
}

resource "genesyscloud_auth_role" "Wallboard_User_301965600" {
  default_role_id = "wallboardUser"
  description     = "Provides minimal permission to display a wallboard"
  name            = "Wallboard User"
  permission_policies {
    action_set  = ["edit", "view"]
    domain      = "analytics"
    entity_name = "dashboardConfigurations"
  }
  permission_policies {
    action_set  = ["search", "view"]
    domain      = "architect"
    entity_name = "flowOutcome"
  }
  permission_policies {
    action_set  = ["view"]
    domain      = "analytics"
    entity_name = "conversationAggregate"
  }
  permission_policies {
    domain      = "analytics"
    entity_name = "conversationDetail"
    action_set  = ["view"]
  }
  permission_policies {
    action_set  = ["view"]
    domain      = "analytics"
    entity_name = "flowAggregate"
  }
  permission_policies {
    action_set  = ["view"]
    domain      = "analytics"
    entity_name = "flowObservation"
  }
  permission_policies {
    action_set  = ["view"]
    domain      = "analytics"
    entity_name = "queueObservation"
  }
  permission_policies {
    action_set  = ["view"]
    domain      = "architect"
    entity_name = "flow"
  }
  permission_policies {
    action_set  = ["view"]
    domain      = "architect"
    entity_name = "flowMilestone"
  }
  permission_policies {
    entity_name = "user"
    action_set  = ["view"]
    domain      = "directory"
  }
  permission_policies {
    domain      = "routing"
    entity_name = "queue"
    action_set  = ["view"]
  }
  permission_policies {
    action_set  = ["view"]
    domain      = "routing"
    entity_name = "wrapupCode"
  }
  permission_policies {
    entity_name = "realtimeAdherence"
    action_set  = ["view"]
    domain      = "wfm"
  }
}

resource "genesyscloud_auth_role" "Master_Admin_2763240506" {
  default_role_id = "masterAdmin"
  description     = "Administrator"
  name            = "Master Admin"
  permission_policies {
    action_set  = ["*"]
    domain      = "acdscreenshare"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "acdvideo"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "alerting"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "analytics"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "architect"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "attributes"
    entity_name = "*"
  }
  permission_policies {
    domain      = "audits"
    entity_name = "*"
    action_set  = ["*"]
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "authentication"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "authorization"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "billing"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "bridge"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "chat"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "coaching"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "cobrowse"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "conversation"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "dialog"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "directory"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "gamification"
    entity_name = "leaderboard"
  }
  permission_policies {
    entity_name = "*"
    action_set  = ["*"]
    domain      = "gdpr"
  }
  permission_policies {
    domain      = "integrations"
    entity_name = "*"
    action_set  = ["*"]
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "journey"
    entity_name = "*"
  }
  permission_policies {
    domain      = "knowledge"
    entity_name = "*"
    action_set  = ["*"]
  }
  permission_policies {
    domain      = "languageUnderstanding"
    entity_name = "*"
    action_set  = ["*"]
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "learning"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "limits"
    entity_name = "*"
  }
  permission_policies {
    entity_name = "*"
    action_set  = ["*"]
    domain      = "messaging"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "mobile"
    entity_name = "*"
  }
  permission_policies {
    domain      = "notifications"
    entity_name = "*"
    action_set  = ["*"]
  }
  permission_policies {
    domain      = "oauth"
    entity_name = "*"
    action_set  = ["*"]
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "outbound"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "presence"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "purecloudvoice"
    entity_name = "*"
  }
  permission_policies {
    domain      = "pushnotification"
    entity_name = "*"
    action_set  = ["*"]
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "quality"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "recording"
    entity_name = "*"
  }
  permission_policies {
    entity_name = "*"
    action_set  = ["*"]
    domain      = "reporting"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "responses"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "routing"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "routing"
    entity_name = "message"
  }
  permission_policies {
    domain      = "scripter"
    entity_name = "*"
    action_set  = ["*"]
  }
  permission_policies {
    entity_name = "*"
    action_set  = ["*"]
    domain      = "sms"
  }
  permission_policies {
    domain      = "speechAndTextAnalytics"
    entity_name = "*"
    action_set  = ["*"]
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "sso"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "telephony"
    entity_name = "*"
  }
  permission_policies {
    entity_name = "*"
    action_set  = ["*"]
    domain      = "textbots"
  }
  permission_policies {
    domain      = "ui"
    entity_name = "*"
    action_set  = ["*"]
  }
  permission_policies {
    domain      = "uploads"
    entity_name = "*"
    action_set  = ["*"]
  }
  permission_policies {
    domain      = "video"
    entity_name = "*"
    action_set  = ["*"]
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "voicebots"
    entity_name = "*"
  }
  permission_policies {
    domain      = "voicemail"
    entity_name = "*"
    action_set  = ["*"]
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "webchat"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "wfm"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "wfp"
    entity_name = "*"
  }
  permission_policies {
    domain      = "widgets"
    entity_name = "*"
    action_set  = ["*"]
  }
  permission_policies {
    domain      = "greetings"
    entity_name = "greeting"
    action_set  = ["add"]
  }
  permission_policies {
    domain      = "greetings"
    entity_name = "groupGreeting"
    action_set  = ["add"]
  }
  permission_policies {
    action_set  = ["add"]
    domain      = "webDeployments"
    entity_name = "configuration"
  }
  permission_policies {
    domain      = "webDeployments"
    entity_name = "deployment"
    action_set  = ["add"]
  }
  permission_policies {
    action_set  = ["associate"]
    domain      = "externalContacts"
    entity_name = "conversation"
  }
  permission_policies {
    domain      = "recording"
    entity_name = "screenRecording"
    action_set  = ["download"]
  }
  permission_policies {
    domain      = "routing"
    entity_name = "queue"
    action_set  = ["readonly"]
  }
  permission_policies {
    action_set  = ["search"]
    domain      = "architect"
    entity_name = "datatable"
  }
  permission_policies {
    action_set  = ["search"]
    domain      = "architect"
    entity_name = "flowOutcome"
  }
  permission_policies {
    action_set  = ["search"]
    domain      = "routing"
    entity_name = "callRoute"
  }
  permission_policies {
    action_set  = ["search"]
    domain      = "routing"
    entity_name = "emergencyGroup"
  }
  permission_policies {
    action_set  = ["search"]
    domain      = "routing"
    entity_name = "schedule"
  }
  permission_policies {
    domain      = "routing"
    entity_name = "scheduleGroup"
    action_set  = ["search"]
  }
  permission_policies {
    domain      = "gamification"
    entity_name = "scorecard"
    action_set  = ["view", "viewAll"]
  }
}