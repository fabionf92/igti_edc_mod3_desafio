# define variables

variable "aws_region" {
  default = "us-east-2"
}

variable "prefix" {
  default = "igti-fabio-desafio-mod3"
}

variable "account" {
  default = 387875303309
}

variable "key_pair_name" {
  default = "EMR-IGTI-delta"
}

# prefix configuration and project common tags

locals {
  prefix = "${var.prefix}-${terraform.workspace}"
  common_tags = {
    Project      = "Mod3-Desafio"
    ManagedBy    = "Terraform"
    Department   = "IGTI",
    Provider     = "IGTI",
    Owner        = "Data Engineering"
    BusinessUnit = "Data"
    Billing      = "Infrastructure"
    Environment  = terraform.workspace
    UserEmail    = "fabio.nf@live.com"
  }
}

variable "bucket_name" {
  default = "datalake-igti-fabio-desafio-mod3"
}