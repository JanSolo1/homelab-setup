locals {
  root_config = read_terragrunt_config(find_in_parent_folders("root-config.hcl"))
  stage       = "dev"

  tags = {
    environment = local.stage
  }
}

generate "provider_global" {
  path      = "provider.tf"
  if_exists = "overwrite"
  contents  = <<EOF
terraform {
    required_providers {
        cloudflare = {
            source = "cloudflare/cloudflare"
            version = "~> 3.0"
        }
    }
    # backend "http" {
    #     address ="${get_env("TF_VAR_http_address", "")}"
    #     lock_address ="${get_env("TF_VAR_http_lock_address", "")}"  
    #     unlock_address ="${get_env("TF_VAR_http_unlock_address", "")}" 
    # }
    
}

provider "cloudflare" {
    api_token = "${get_env("TF_VAR_api_token", "")}"
}
EOF
}