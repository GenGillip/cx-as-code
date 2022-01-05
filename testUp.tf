# resource "genesyscloud_routing_queue" "ACD01" {
#     acw_timeout_ms           = 0
#     acw_wrapup_prompt        = "OPTIONAL"
#     auto_answer_only         = false
#     default_script_ids       = {}
#     division_id              = "cf8293fa-1fd5-4fd4-a85d-659e4b937069"
#     enable_manual_assignment = true
#     enable_transcription     = false
#     id                       = "3c504180-5ee1-4bc5-8551-1fd083395eec"
#     members                  = []
#     name                     = "ACD01"
#     skill_evaluation_method  = "ALL"
#     wrapup_codes             = [
#         "0ccd4ed6-a33b-4091-853a-c41d74b4700f",
#         "1fca6eed-62af-4efa-8386-783920cfe670",
#     ]

#     media_settings_call {
#         alerting_timeout_sec      = 15
#         service_level_duration_ms = 20000
#         service_level_percentage  = 0.8
#     }

#     media_settings_callback {
#         alerting_timeout_sec      = 30
#         service_level_duration_ms = 20000
#         service_level_percentage  = 0.8
#     }

#     media_settings_chat {
#         alerting_timeout_sec      = 30
#         service_level_duration_ms = 20000
#         service_level_percentage  = 0.8
#     }

#     media_settings_email {
#         alerting_timeout_sec      = 300
#         service_level_duration_ms = 86400000
#         service_level_percentage  = 0.8
#     }

#     media_settings_message {
#         alerting_timeout_sec      = 30
#         service_level_duration_ms = 20000
#         service_level_percentage  = 0.8
#     }

#     media_settings_video {
#         alerting_timeout_sec      = 8
#         service_level_duration_ms = 20000
#         service_level_percentage  = 0.8
#     }
# }