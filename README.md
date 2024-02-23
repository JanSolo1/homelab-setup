# Cloudflare Setup Project

This project contains the Terraform and Terragrunt configurations for managing Homelab resources.

## Terraform

The `terraform` directory contains the Terraform configurations for the Homelab resources and / or Cloud resources.

## Terragrunt

The `terragrunt` directory contains the Terragrunt configurations. The `dev` and `prod` directories contain the environment-specific configurations, and the `root-config.hcl` file contains the root configuration.

## Terragrunt Vars Usage

**Example Usage**
```
    your-project
    ├── terraform
    │   ├── app
    │   │   └── main.tf
    └── terragrunt
        ├── dev
        │   └── app
        │       ├── terragrunt.hcl
        │       └── secrets.tfvars
        ├── prod
        │   └── app
        │       ├── terragrunt.hcl
        │       └── secrets.tfvars
        │ 
        ├── root-config.hcl
        └── vars-config.hcl
```

`secrets.tfvars` and `vars-config.hcl` are configuration files used in Terraform and Terragrunt respectively.
They can be used as follow:

**secrets.tfvars**
```hcl
secret_value = "your_code"
top_secret_value = "your_code"
```

**vars-config.hcl**
```hcl
locals {
    http_address = "http://myip:port/terraform/state"
    http_lock_address = "http://myip:port/terraform/lock"
    http_unlock_address = "http://myip:port/terraform/unlock"
}
```
