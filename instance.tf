provider "aws" {
  region = "us-east-2"
  access_key=var.AWS_ACCESS_KEY
  secret_key=var.AWS_SECRET_KEY 
}

resource "aws_instance" "web" {
  ami           = "ami-0231217be14a6f3ba"
  instance_type = "t2.micro"

  tags = {
    Name = "myTCEC2"
  }
}
