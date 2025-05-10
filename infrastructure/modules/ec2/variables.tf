variable "ami" {
  description = "The AMI to use for the instance"
  type        = string
  default = "ami-00b33f437a7cec8c5"
}

variable "instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = "t3.micro"
}

variable "vpc_id" {
  description = "The VPC ID to launch the instance in"
  type        = string
  default = "vpc-00a987aa746355d96"
}

variable "subnet_id" {
  description = "The subnet ID to launch the instance in"
  type        = string
  default = "subnet-0db2c89226baaf431"
}

variable "environment" {
  description = "The environment to deploy to"
  type        = string
}