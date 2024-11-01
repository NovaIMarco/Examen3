terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  access_key = "ASIAWY2XLAVL67DNCGS7"
  secret_key = "VaUI8EBD+agjQc01JnlgE08TFwsH6Tfd1h20TRKY"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0c02fb55956c7d316"  # Amazon Linux 2 AMI en us-east-1
  instance_type = "t2.micro"
  tags = {
    Name = "InstanciaParaTerraform"
  }
}