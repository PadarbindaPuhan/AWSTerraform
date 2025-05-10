module "web_application_server" {
  source        = "./modules/ec2"
  ami           = "ami-075686beab831bb7f"
  instance_type = "t3.micro"
  subnet_id     = "subnet-0db2c89226baaf431"
  environment   = var.environment
}



