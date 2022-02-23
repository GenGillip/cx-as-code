
terraform {
  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"

    }
  }
}

resource "genesyscloud_auth_role" "Nexus_Admin_Role_1574057725" {
  description = "Test API Role"
  name        = "Nexus Admin Role"
  permission_policies {
    domain      = "acdscreenshare"
    entity_name = "*"
    action_set  = ["*"]
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "acdvideo"
    entity_name = "*"
  }
  permission_policies {
    domain      = "alerting"
    entity_name = "*"
    action_set  = ["*"]
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
    entity_name = "attribute"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "audits"
    entity_name = "*"
  }
  permission_policies {
    entity_name = "*"
    action_set  = ["*"]
    domain      = "authentication"
  }
  permission_policies {
    domain      = "authorization"
    entity_name = "*"
    action_set  = ["*"]
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "billing"
    entity_name = "*"
  }
  permission_policies {
    domain      = "bridge"
    entity_name = "*"
    action_set  = ["*"]
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
    domain      = "cobrowse"
    entity_name = "*"
    action_set  = ["*"]
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "conversation"
    entity_name = "*"
  }
  permission_policies {
    entity_name = "*"
    action_set  = ["*"]
    domain      = "directory"
  }
  permission_policies {
    domain      = "directory"
    entity_name = "fieldConfig"
    action_set  = ["*"]
  }
  permission_policies {
    entity_name = "group"
    action_set  = ["*"]
    domain      = "directory"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "directory"
    entity_name = "location"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "directory"
    entity_name = "translations"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "directory"
    entity_name = "user"
  }
  permission_policies {
    entity_name = "*"
    action_set  = ["*"]
    domain      = "documents"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "externalContacts"
    entity_name = "*"
  }
  permission_policies {
    entity_name = "*"
    action_set  = ["*"]
    domain      = "gdpr"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "geolocation"
    entity_name = "*"
  }
  permission_policies {
    domain      = "integration"
    entity_name = "*"
    action_set  = ["*"]
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "integrations"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "messaging"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "notifications"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "oauth"
    entity_name = "*"
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
    action_set  = ["*"]
    domain      = "pushnotification"
    entity_name = "*"
  }
  permission_policies {
    domain      = "quality"
    entity_name = "*"
    action_set  = ["*"]
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "recording"
    entity_name = "*"
  }
  permission_policies {
    domain      = "reporting"
    entity_name = "*"
    action_set  = ["*"]
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
    entity_name = "*"
    action_set  = ["*"]
    domain      = "scripter"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "sms"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "speechAndTextAnalytics"
    entity_name = "*"
  }
  permission_policies {
    domain      = "sso"
    entity_name = "*"
    action_set  = ["*"]
  }
  permission_policies {
    domain      = "telephony"
    entity_name = "*"
    action_set  = ["*"]
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "textbots"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "ui"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "voicebots"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["*"]
    domain      = "voicemail"
    entity_name = "*"
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
    action_set  = ["*"]
    domain      = "widgets"
    entity_name = "*"
  }
  permission_policies {
    action_set  = ["add", "delete", "edit", "search", "view"]
    domain      = "routing"
    entity_name = "callRoute"
  }
  permission_policies {
    action_set  = ["add", "delete", "edit", "search", "view"]
    domain      = "routing"
    entity_name = "emergencyGroup"
  }
  permission_policies {
    action_set  = ["add", "delete", "edit", "search", "view"]
    domain      = "routing"
    entity_name = "schedule"
  }
  permission_policies {
    domain      = "routing"
    entity_name = "scheduleGroup"
    action_set  = ["add", "delete", "edit", "search", "view"]
  }
  permission_policies {
    domain      = "authorization"
    entity_name = "grant"
    action_set  = ["add"]
  }
  permission_policies {
    domain      = "recording"
    entity_name = "screenRecording"
    action_set  = ["download"]
  }
  permission_policies {
    domain      = "voicemail"
    entity_name = "groupPolicy"
    action_set  = ["edit", "view"]
  }
  permission_policies {
    domain      = "presence"
    entity_name = "userPresence"
    action_set  = ["edit"]
  }
  permission_policies {
    domain      = "coaching"
    entity_name = "appointment"
    action_set  = ["participate"]
  }
  permission_policies {
    domain      = "learning"
    entity_name = "assignment"
    action_set  = ["participate"]
  }
  permission_policies {
    domain      = "routing"
    entity_name = "queue"
    action_set  = ["readonly"]
  }
  permission_policies {
    action_set  = ["view"]
    domain      = "audits"
    entity_name = "interactionDetails"
  }
  permissions = ["admin", "architect_administration", "architect_editor", "architect_read_only", "content_management_admin", "content_management_user", "employee", "field_administration", "group_administration", "group_creation", "integration_config_administration", "location_administration", "location_contributor", "location_manager", "notification_administration", "notification_creation", "person_administration", "role_manager", "unified_communications", "user_administration", "user_manager"]
}