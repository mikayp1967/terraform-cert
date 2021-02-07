provider "aws" {
    region = "eu-west-2"
}

module "Jenkins" {
    instance_type = var.instance_size
    source = "../modules/ec2-simple"
}
