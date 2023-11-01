
data "aws_ami" "test" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]  # AWS Account ID for Canonical
}

resource "aws_instance" "test" {
  ami           = data.aws_ami.test.id
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }
}

