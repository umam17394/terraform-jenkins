terraform {
  required_version = ">= 0.13.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.8.0"
    }
  }
}

variable "region" {
  description = "The name of the aws Region"
  type        = string
  default = "us-east-1"
}
locals {
  region = var.region
}

resource "aws_vpc" "vpc" {
  cidr_block           = "192.168.1.0/28"
  
  enable_dns_hostnames = true
  enable_dns_support   = true
 tags = {
  Name = "jenkins-test"
}
}
