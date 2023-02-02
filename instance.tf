provider "aws" {
	region = "ap-south-1"
}

resource "aws_instance" "terraform-example-config-check" {
	ami = "ami-0cca134ec43cf708f"
	instance_type = "t2.micro"
	user_data = <<EOF
	
	#!/bin/bash
	sudo su
	yum update -y
	yum install java-1.8.0-openjdk -y
	EOF
	
	tags = {
    Name = "HelloMonil"
  }
}