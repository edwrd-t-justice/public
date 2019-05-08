#create a file named keys.tf and DO NOT SHARE IT.
#AMI IDs are region specific.
#Replace the ACCESS_KEY_HERE and SECRET_KEY_HERE with your AWS access key and secret key
#if you simply leave out AWS credentials, Terraform will automatically search for saved API credentials 
#(for example, in ~/.aws/credentials) or IAM instance profile credentials. 


#for AWS

provider "aws" {
  access_key = "ACCESS_KEY_HERE"
  secret_key = "SECRET_KEY_HERE"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-2757f631"  #this is the image to pick. ex centos7 in US EAST 1 - ami-02eac2c0129f6376b
  instance_type = "t2.micro"
  key_name = "AWS EC2 - SEP 2016" #example keyname to use
}

#Once this is configured, CD to thee directory of this file and run

terraform init   

terraform apply  

#The latter will build a vm based on thee above