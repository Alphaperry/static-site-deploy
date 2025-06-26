variable "region" {
  default = "us-east-1"
}

variable "my_ip" {
  description = "Your IP for SSH access"
  default     = "0.0.0.0/0"
}

variable "key_pair" {
  description = "the name of your ec2 key pair"
  default     = ""
}
