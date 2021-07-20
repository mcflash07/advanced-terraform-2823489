# //////////////////////////////
# PROVIDERS
# //////////////////////////////
provider "aws" {
  profile    = "default"
  region     = var.region
}

module "node_instance" {
    source = "./modules/nodejs-instance"
    instance_count = 2
    environment_tags = {
        "environment_id" = "development"
    }
}