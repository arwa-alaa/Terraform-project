variable "ami" {
    description= "to define the ami of ec2 instance"
    type= string 
}

variable "regionA" {
    description= "to define the ec2 region"
    type= string 
}

variable "ec2name" {
    description= "to define the ec2 name"
    type= string 
}

variable "s3name" {
    description= "to define the s3 name"
    type= string 
}

variable "dynamodb_table_name" {
    description= "to define the dynamodb name"
    type= string 
}

variable "cidr_vpc" {
  type = string
}

variable "cidr_public_subnet" {
  type = string
}

variable "cidr_private_subnet" {
  type = string
}