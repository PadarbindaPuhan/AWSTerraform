resource "aws_security_group" "allow_all" {
  name        = "allow-all-traffic"
  description = "Security group that allows all inbound traffic"

  ingress {
    protocol    = "-1"  # "-1" means all protocols
    cidr_blocks = var.cidr_blocks
    to_port = -1  # "-1" means all ports
    from_port = -1  # "-1" means all ports
    
  }
  

  tags = {
    Name        = "${var.environment}-web-app-instance"
    Environment = var.environment
  }
}