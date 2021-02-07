resource "aws_instance" "example" {
    ami = data.aws_ami.amazon_linux.id
    instance_type = var.instance_type
}

data "aws_ami" "amazon_linux" {
  most_recent      = true
  owners           = ["137112412989"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

