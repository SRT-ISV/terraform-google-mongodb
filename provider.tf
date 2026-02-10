terraform {
required_providers {
  mongodbatlas = {
    source  = "mongodb/mongodbatlas"
    version = "~> 1.0"
  }
}
}


# provider "google" {
#  project = local.project_id#"gcp-pov"
#  region  = local.gcp_region
# }

provider "mongodbatlas" {
public_key = var.mongodbatlas_public_key
private_key  = var.mongodbatlas_private_key 
}