terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
    # tls = {
    #   source  = "hashicorp/tls"
    #   version = ">= 4.0.4"
    # }
    awscc = {
      source  = "hashicorp/awscc"
      version = ">= 0.25.0"
    }
    time = {
      source  = "hashicorp/time"
      version = ">= 0.9.2"
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
