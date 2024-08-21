terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
  # cloud {
  #   organization = "vthang-devops"
  #   workspaces {
  #     name = "1st-workflow"
  #   }
  # }
  required_version = ">= 1.8.0"
}

provider "aws" {
  region = "ap-southeast-1"
}
