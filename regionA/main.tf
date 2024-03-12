
module "s3" {

source = "../modules/s3"
s3_name = var.s3name
}

module "dynamodb" {
source = "../modules/dynamodb"
dynamodb_name = var.dynamodb_table_name
}

module "networks" {
  source = "../modules/networks"
  cidr_vpc            = var.cidr_vpc
  cidr_public_subnet  = var.cidr_public_subnet
  cidr_private_subnet = var.cidr_private_subnet
}

module "ec2" {
source = "../modules/ec2"
ami = var.ami
subnet_id = module.networks.public
security_group_id = module.networks.security_group
ec2_name = join("-", [var.ec2name, var.regionA])
}