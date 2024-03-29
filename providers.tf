#
# Provider Configuration
#

provider "aws" {
  region = "ap-southeast-1"
}

# Using these data sources allows the configuration to be
# generic for any region.
data "aws_region" "current" {}

data "aws_availability_zones" "available" {}

# terraform {
#   backend "s3" {
#     bucket = "terraform-state-eks-demo"
#     region = "ap-southeast-1"
#     key    = "demo-eks-demo.tfstate"
#   }
# }