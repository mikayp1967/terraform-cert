variable "region" {
    default = "eu-west-1"
}

variable "amis" {
  type = "map"
  default = {
    "eu-east-1" = "ami-b374d5a5"
    "eu-west-2" = "ami-0a669382ea0feb73a"
  }
}
