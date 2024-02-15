locals {
    region = "us-east-1"

    # add all versions here like gcp, aws, terraform, terragrunt, etc
    version_terraform    = "=1.7.2"
    version_terragrunt   = "=0.55.2"

    project = "home-lab"

    root_tags = {
        project = local.project
        developer = "JanSolo1"
    }
}