provider "aws" {
        region = "us-east-2"
        #access_key = "${aws configure get aws_access_key_id}"
        #secret_key = "${aws configure get aws_secret_access_key}"
 }

   resource "aws_instance" "web" {
        ami = "ami-916f59f4"
        instance_type = "t2.micro"
        key_name = "${var.key_name}"
        security_groups= ["JenkinsSG"]
        tags {
         Name = "terraform-instance"
        }
 }
