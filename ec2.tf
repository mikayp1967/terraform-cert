resource "aws_instance" "example" {
  ami           = var.amis[var.region]
  instance_type = "t2.micro"
}

output "build_region" {
    value = var.region
}

resource "aws_instance" "tf-server" {
  ami           = var.amis[var.region]
  instance_type = "t2.micro"
}

