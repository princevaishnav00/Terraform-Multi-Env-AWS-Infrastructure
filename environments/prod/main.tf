module "vpc" {
  source             = "../../modules/vpc"
  env                = var.env
  vpc_cidr           = "10.2.0.0/16"
  public_subnet_cidr = "10.2.1.0/24"
  availability_zone  = "ap-south-1a"
}

module "ec2" {
  source             = "../../modules/ec2"
  env                = var.env
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  instance_count     = var.instance_count
  subnet_id          = module.vpc.public_subnet_id
  security_group_ids = [module.vpc.security_group_id]
  public_key_path    = var.public_key_path
}

module "s3" {
  source = "../../modules/s3"
  env    = var.env
}

module "dynamodb" {
  source = "../../modules/dynamodb"
  env    = var.env
}

module "rds" {
  source                 = "../../modules/rds"
  env                    = var.env
  db_name                = "proddb"
  username               = "prodadmin"
  password               = var.db_password
  subnet_ids             = [module.vpc.public_subnet_id]
  vpc_security_group_ids = [module.vpc.security_group_id]
}
