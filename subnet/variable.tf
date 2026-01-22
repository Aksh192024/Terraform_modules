variable "vpc_id" {
  description = "VPC ID where subnet will be created"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "availability_zone" {
  description = "AWS AZ for this subnet"
  type        = string
}

variable "is_public" {
  description = "Whether this subnet is public"
  type        = bool
}

variable "subnet_name" {
  description = "Name tag for subnet"
  type        = string
}
