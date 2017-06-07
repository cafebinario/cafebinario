variable "region" {
  description = "Default Region Amazon EC2"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "Instance type"
  default     = "t2.micro"
}

variable "keypair_name" {
  description = "Key Access Instance EC2"
  default     = "filebeat"
}

