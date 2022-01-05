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


resource "genesyscloud_routing_queue" "TestQueue1" {
    acw_timeout_ms           = 5000
    acw_wrapup_prompt        = "MANDATORY_TIMEOUT"
    auto_answer_only         = true
    default_script_ids       = {
        "CALL" = "66cda81f-1ee8-4ad1-a8d6-f784550586dc"
        "CHAT" = "68cad20f-6cf5-460e-954d-87cc8d55810a"
    }
    division_id              = "cf8293fa-1fd5-4fd4-a85d-659e4b937069"
    enable_manual_assignment = true
    enable_transcription     = false
    id                       = "27f14567-d563-4974-aa6b-20f7cab9669d"
    members                  = [
        {
            ring_num = 1
            user_id  = "00e83662-c11c-409e-b7b8-9e911656ff7d"
        },
        {
            ring_num = 1
            user_id  = "04b804b7-a973-4d68-b9d9-d1a8868d4bf1"
        },
        {
            ring_num = 1
            user_id  = "04f97e46-993e-4e13-acc6-84353dd91a2c"
        },
        {
            ring_num = 1
            user_id  = "0af6495a-013d-432a-895f-e5ed53386ccf"
        },
        {
            ring_num = 1
            user_id  = "0eb93746-34b4-4303-ae29-27abc6131053"
        },
        {
            ring_num = 1
            user_id  = "14d19024-cb7a-484c-9e48-7b5250066d0e"
        },
        {
            ring_num = 1
            user_id  = "1b65e4c7-e4b8-44c3-905d-d2d282f24637"
        },
        {
            ring_num = 1
            user_id  = "20efea1d-0f6f-4063-b11a-f71bd72ff68c"
        },
        {
            ring_num = 1
            user_id  = "27ec84ba-ed86-4bce-bcbc-3faa6acdc9e2"
        },
        {
            ring_num = 1
            user_id  = "2996c27b-6088-4d42-8ca5-504e210d40c4"
        },
        {
            ring_num = 1
            user_id  = "2ba4ffb6-d8ac-4cf5-a3b8-9513aa82d39d"
        },
        {
            ring_num = 1
            user_id  = "2de9a880-e18b-4309-a1ec-f5c72fd05480"
        },
        {
            ring_num = 1
            user_id  = "49e59ac5-205a-4b96-9ab4-9606e8e3b08a"
        },
        {
            ring_num = 1
            user_id  = "4ab4e2e8-ab22-4a88-b8b1-a06d8af2094e"
        },
        {
            ring_num = 1
            user_id  = "5211c47e-ed55-4ad9-af30-86eab3c748fc"
        },
        {
            ring_num = 1
            user_id  = "5d7cdaca-99e5-4770-8fbc-c24315adc0fb"
        },
        {
            ring_num = 1
            user_id  = "627dbf3d-16ac-4d1b-abc9-322c21855e93"
        },
        {
            ring_num = 1
            user_id  = "67682ba4-1102-4792-8af9-43bea0f2e263"
        },
        {
            ring_num = 1
            user_id  = "67f48df4-222d-476c-b418-c40a88420ba7"
        },
        {
            ring_num = 1
            user_id  = "6dd6f203-a7ff-4de9-843a-23691c198b51"
        },
        {
            ring_num = 1
            user_id  = "6ee86215-6ec1-4f94-96c7-fa496b3201b6"
        },
        {
            ring_num = 1
            user_id  = "75251ffa-5838-4f1a-858a-c1cc5a51af02"
        },
        {
            ring_num = 1
            user_id  = "7d4678ca-fcf3-4d43-acb9-7d0a1d982b6f"
        },
        {
            ring_num = 1
            user_id  = "7e723697-eb57-4ee4-b974-7237bfc6f91a"
        },
        {
            ring_num = 1
            user_id  = "833640cc-2e18-4bd0-8d3d-b111509757a8"
        },
        {
            ring_num = 1
            user_id  = "85438160-e027-4287-850d-24a0d54d8ed7"
        },
        {
            ring_num = 1
            user_id  = "8579675d-0bc1-4305-97bc-4aee1df6e601"
        },
        {
            ring_num = 1
            user_id  = "87c6e354-2710-47e0-a948-91c44f2fcb8c"
        },
        {
            ring_num = 1
            user_id  = "926d0290-df7c-4113-9a1a-0a303d1c5569"
        },
        {
            ring_num = 1
            user_id  = "98391b00-4b7b-4245-ab59-dbaacde2a716"
        },
        {
            ring_num = 1
            user_id  = "9c728809-f60c-4b5e-a001-b77fb3e3c86b"
        },
        {
            ring_num = 1
            user_id  = "9e9b828e-7e09-40e1-a793-7f22dc8e6622"
        },
        {
            ring_num = 1
            user_id  = "9ec0b7c7-e2ea-4b54-a7c5-37ec9e97fa05"
        },
        {
            ring_num = 1
            user_id  = "9fe31152-bf36-497e-b5c7-a312a1c3af1c"
        },
        {
            ring_num = 1
            user_id  = "a3af5f3d-259a-4968-8d3c-86353dd1e669"
        },
        {
            ring_num = 1
            user_id  = "a4cb06b9-3bbd-434a-a5ea-8696437ae01c"
        },
        {
            ring_num = 1
            user_id  = "a71ef407-726b-4644-a468-1de769bfdc9b"
        },
        {
            ring_num = 1
            user_id  = "acbaacf1-591c-4f7b-8560-ee7850bb53e0"
        },
        {
            ring_num = 1
            user_id  = "acd9b5ba-3f3e-4788-b031-154d655a09a1"
        },
        {
            ring_num = 1
            user_id  = "b5460141-af9d-40eb-9702-edf7e51dfdee"
        },
        {
            ring_num = 1
            user_id  = "bdbcb794-90bd-4e43-af52-39e727154dfa"
        },
        {
            ring_num = 1
            user_id  = "c7974565-d588-48dc-a3a3-2001ab8e896b"
        },
        {
            ring_num = 1
            user_id  = "c9158a80-07ff-4639-9eee-b7b324ef36d7"
        },
        {
            ring_num = 1
            user_id  = "d008be07-a34f-416d-b67b-8d104c19e920"
        },
        {
            ring_num = 1
            user_id  = "d24cda1e-3869-48d0-a850-e00ae5740c98"
        },
        {
            ring_num = 1
            user_id  = "df81acdf-45ed-4890-85fa-9448f6e06d4f"
        },
        {
            ring_num = 1
            user_id  = "e1997ae4-128b-4c43-a1b0-04d354915b60"
        },
        {
            ring_num = 1
            user_id  = "e8301b8b-8b10-4d3d-b971-ba72d0ce0722"
        },
        {
            ring_num = 1
            user_id  = "e8b36ac1-e84e-4891-aa96-721051d8022e"
        },
        {
            ring_num = 1
            user_id  = "ed49a9a2-2041-476f-b15c-f484dfeac255"
        },
        {
            ring_num = 1
            user_id  = "f307d2ac-267a-4df5-bc38-d0ad654f6625"
        },
        {
            ring_num = 1
            user_id  = "f6eb8719-4c3e-460c-95b1-b2becae85640"
        },
        {
            ring_num = 1
            user_id  = "f9eb97af-40c7-41a0-853d-dc16ec69cd15"
        },
    ]
    name                     = "TestQueue1"
    queue_flow_id            = "6d70f443-6c58-49e1-998a-ff12da8af9c1"
    skill_evaluation_method  = "ALL"
    wrapup_codes             = [
        "13336470-e6f1-4c4d-ba9b-a2f005095376",
        "2a4cd02a-792d-4d12-bc59-b0ba5e0d689a",
        "c67a9ff2-dc0b-4a68-a290-fb76236760ce",
    ]

    media_settings_call {
        alerting_timeout_sec      = 500
        service_level_duration_ms = 20000
        service_level_percentage  = 0.8
    }

    media_settings_callback {
        alerting_timeout_sec      = 30
        service_level_duration_ms = 20000
        service_level_percentage  = 0.8
    }

    media_settings_chat {
        alerting_timeout_sec      = 30
        service_level_duration_ms = 20000
        service_level_percentage  = 0.8
    }

    media_settings_email {
        alerting_timeout_sec      = 10
        service_level_duration_ms = 86400000
        service_level_percentage  = 0.8
    }

    media_settings_message {
        alerting_timeout_sec      = 10
        service_level_duration_ms = 20000
        service_level_percentage  = 0.8
    }

    media_settings_social {
        alerting_timeout_sec      = 300
        service_level_duration_ms = 20000
        service_level_percentage  = 0.8
    }

    media_settings_video {
        alerting_timeout_sec      = 8
        service_level_duration_ms = 20000
        service_level_percentage  = 0.8
    }
}