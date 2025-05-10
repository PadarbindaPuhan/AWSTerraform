module "web_application_server" {
  source        = "./modules/ec2"
  ami           = "ami-00b33f437a7cec8c5"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0db2c89226baaf431"
  environment   = var.environment
}



