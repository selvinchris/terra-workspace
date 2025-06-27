# trigger a new run
provider "aws" {

    region = "us-east-1"
  
}

resource "aws_instance" "test1" {

    ami = "ami-00a929b66ed6e0de6"
    instance_type = "t2.micro"

    tags = {
        Name= "testing_instance"
    }
  
}

output "instance_id" {

    value= aws_instance.test1.id
} 
output "public_ip" {

    value= aws_instance.test1.public_ip
} 
output "instance_name" {

    value= aws_instance.test1.tags["Name"]
} 