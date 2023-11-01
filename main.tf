
provider "aws" {
  region = "us-east-1"  
}

module "test_instance" {
  source        = "./ec2_instance_module"
}

