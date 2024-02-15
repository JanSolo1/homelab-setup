# Cloudflare Setup Project

This project contains the Terraform and Terragrunt configurations for managing Homelab resources.

## Terraform

The `terraform` directory contains the Terraform configurations for the Homelab resources.

### Cloudflare

The `cloudflare` directory contains the Terraform configuration for the Cloudflare resources. The `main.tf` file contains the resource definitions, the `variables.tf` file contains the variable declarations, and the `outputs.tf` file contains the output declarations.

## Terragrunt

The `terragrunt` directory contains the Terragrunt configurations. The `dev` and `prod` directories contain the environment-specific configurations, and the `root-config.hcl` file contains the root configuration.

### Environments

The `dev` directory contains the development environment configuration. The `cloudflare` directory contains the Terragrunt configuration for the Cloudflare resources, and the `stage.hcl` file contains the stage configuration.


## Usage

To apply the Terraform configuration, you need to set the `TF_VAR_` environment variable to your personal values:

```bash
export TF_VAR_api_token="your_api_token"

terraform plan
terraform apply
```
>Note: This is only for the generate keyword, the terraform resources will be able to pull values from env files like "secrets.tfvars"