variable "ACCESS_KEY" {}
variable "SECRET_KEY" {}

provider "aws" {
  region     = "eu-west-3"
  access_key = "${var.ACCESS_KEY}"
  secret_key = "${var.SECRET_KEY}"
}

resource "aws_instance" "EC2_instance" {
  ami           = "ami-0c229bfed6d47178b"
  instance_type = "t2.micro"
  tags = {
    Name = "future nodejs app"
  }
}

resource "aws_ecs_cluster" "first_cluster" {
  name = "basic-nodejs-app-toutoune"
}
