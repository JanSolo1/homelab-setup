include "root" {
  path   = find_in_parent_folders("root-config.hcl")
  expose = true
}

include "stage" {
  path   = find_in_parent_folders("stage.hcl")
  expose = true
}

locals {
  root_config  = read_terragrunt_config(find_in_parent_folders("root-config.hcl"))
  stage_config = read_terragrunt_config(find_in_parent_folders("stage.hcl"))

  # merge tags
  local_tags = {
    "Description" = "${local.root_config.locals.project}-cloudflare-${local.stage_config.locals.stage}"
  }

  tags = merge(local.root_config.locals.root_tags, local.stage_config.locals.tags, local.local_tags)
}

inputs = {
  personal_cloudflare ={
    zone_id   = "${get_env("TF_VAR_zone_id", "")}"
    public_ip = "${get_env("TF_VAR_public_ip", "")}"
  }
}

terraform {
  source = "${get_parent_terragrunt_dir("root")}/..//terraform/cloudflare"
}