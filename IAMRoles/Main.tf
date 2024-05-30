terraform {
	required_providers {
		aws = {
			source = "hashicorp/aws"
		}
	}

	backend "remote" {
		hostname = "app.terraform.io"
		organization = "Murali_Org"

		workspaces {
			name = "Terraform-CICD-test"
		}
	}
}

provider "aws" {
	region = "us-west-1"
}