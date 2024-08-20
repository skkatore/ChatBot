/*provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "myterraform-s3-bucket-12345" 
  acl    = "private"
}

resource "aws_ecr_repository" "my_ecr" {
  name = "my-ecr-repo"
}

resource "aws_db_instance" "myrds" {
  engine = "mysql"
  engine_version = "8.0.35"
  allocated_storage = 20
  storage_type = "gp2"
  identifier = "mydb"
  instance_class = "db.t3.micro"
  username = "Admin"
  password = "passw0rd!123"
  publicly_accessible = true
  skip_final_snapshot  = true

  tags = {
    name = "myrdsdb"
  }
}*/

resource "aws_instance" "ec2" {
  ami           = "ami-0c55b159cbfafe1f0" # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"

  tags = {
    Name = "TerraformExample"
  } 
}