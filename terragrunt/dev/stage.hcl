locals {
  root_config = read_terragrunt_config(find_in_parent_folders("root-config.hcl"))
  vars_config = read_terragrunt_config(find_in_parent_folders("vars-config.hcl"))
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
    backend "http" {
        address ="${local.vars_config.locals.http_address}"
        lock_address ="${local.vars_config.locals.http_lock_address}"  
        unlock_address ="${local.vars_config.locals.http_unlock_address}" 
    }
    
}

provider "cloudflare" {
    api_token = "${local.vars_config.locals.cloudflare_api_token}"
}
EOF
}

remote_state {
  backend = "http"
  config = {
    address = "${local.vars_config.locals.http_address}"
    lock_address = "${local.vars_config.locals.http_lock_address}"  
    unlock_address = "${local.vars_config.locals.http_unlock_address}" 
  }
}