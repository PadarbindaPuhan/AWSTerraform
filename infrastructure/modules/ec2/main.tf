resource "aws_instance" "web_app" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  security_groups = var.security_groups

  tags = {
    Name        = "${var.environment}-web-app-instance"
    Environment = var.environment
  }
}