module "vpc"{
  source              ="git::https://github.com/chandralekhasingasani/tf-module-vpc.git"
  CIDR_BLOCK          = var.CIDR_BLOCK
  AZ                  = var.AZ
  ENV                 = var.ENV
  SUBNET_CIDR_BLOCK   = var.SUBNET_CIDR_BLOCK
  COMPONENT           = var.COMPONENT
}

module "mysql"{
  depends_on            = [module.vpc]
  source                ="git::https://github.com/chandralekhasingasani/tf-module-mysql.git"
  ENGINE                 = var.ENGINE
  ENGINE_VERSION         = var.ENGINE_VERSION
  INSTANCE_CLASS         = var.INSTANCE_CLASS
  SKIP_FINAL_SNAPSHOT    = var.SKIP_FINAL_SNAPSHOT
  ENV                    = var.ENV
  COMPONENT              = var.COMPONENT
  VPC_ID                 = module.vpc.VPC_ID
  SUBNET_IDS             = module.vpc.SUBNET_IDS
  CIDR_BLOCK             = module.vpc.VPC_CIDR
  AZ                     = var.AZ
}
