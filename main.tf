terraform {
  # backend "remote" {
  #   organization = "genesys-gillip"

  #   workspaces {
  #     prefix = "cx-as-code"
  #   }
  # }
  required_providers {
    genesyscloud = {
      source  = "mypurecloud/genesyscloud"
      version = "~> 1.1.0"
    }
  }
}

provider "genesyscloud" {
  sdk_debug = true
}

# module "classifier_users" {
#   source = "./modules/users"
# }

#This is an example of creating queues using a remote modules.  Remote modules allow you to re-use Terraform/CX as Code component across multiple Terraform
#configs.

# module "classifier_queues" {
#   source                   = "git::https://github.com/GenesysCloudDevOps/genesys-cloud-queues-demo.git?ref=main"
#   classifier_queue_names   = ["401K", "IRA", "529", "GeneralSupport"]
#   classifier_queue_members = module.classifier_users.user_ids
# }

module "classifier_queues" {
  source                   = "./modules/queues"
  classifier_queue_names   = [
    "Nexus_Terra_1",
    #"Nexus_Terra_2"
  ]
  classifier_queue_members = []
}

module "classifier_audio_files" {
  source = "./modules/audio_files"
}

module "classifier_adhoc_queues" {
  source = "./modules/adhoc_queues"
}

module "classifier_wrapcodes" {
  source = "./modules/wrapcodes"
  classifier_wrapcode_names = []
}

module "classifier_groups" {
  source = "./modules/groups"
}

module "classifier_emailproject" {
  source = "./modules/emailproject"
}

module "classifier_divisions" {
  source = "./modules/divisions"
}



# module "classifier_roles" {
#   source                   = "./modules/roles"
  
# }


# module "classifier_email_routes" {
#   source               = "./modules/email_routes"
#   genesys_email_domain = var.genesys_email_domain
# }

# module "classifier_data_actions" {
#   source             = "./modules/data_actions"
#   classifier_url     = var.classifier_url
#   classifier_api_key = var.classifier_api_key
# }
