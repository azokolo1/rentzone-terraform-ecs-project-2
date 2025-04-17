locals {
  region       = var.region
  project_name = var.project_name
  environment  = var.environment
}

# create vpc module
module "vpc" {
  source                  = "git@github.com:azokolo1/terraform-modules2.git//vpc"
  region                  = local.region
  project_name            = local.project_name
  environment             = local.environment
  vpc_cidr                = var.vpc_cidr
  public_subnet_az1       = var.public_subnet_az1
  public_subnet_az2       = var.public_subnet_az2
  private_app_subnet_az1  = var.private_app_subnet_az1
  private_app_subnet_az2  = var.private_app_subnet_az2
  private_data_subnet_az1 = var.private_data_subnet_az1
  private_data_subnet_az2 = var.private_data_subnet_az2
}