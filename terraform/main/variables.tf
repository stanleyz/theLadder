variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.10.0.0/16"
}

variable "subnet_cidr_block" {
  description = "The CIDR block for the subnet"
  type        = string
  default     = "10.10.1.0/24"
}

variable "ami" {
  description = "The AMI to use for the instance"
  type        = string
  default     = null
}

variable "instance_type" {
  description = "The instance type to use for the instance"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "The key name to use for the instance"
  type        = string
  default     = ""
}

variable "instance_name" {
  description = "The name to use for the instance"
  type        = string
  default     = "theLadder"
}

variable "ssh_port" {
  description = "The SSH port to use for the instance"
  type        = number
  default     = 1064
}
