# Step 8 - Add variables
variable "default_tags" {
  default = {
    #"Owner" = "Irina"
    #"App"   = "Web"
  }
  type        = map(any)
  description = "Default tags to be appliad to all AWS resources"
}

#Step 8 - Add variables
#variable "prefix" {
  #default     = "week5"
  #type        = string
  #description = "Name prefix"
#}

# Step 9 - Provision public subnet in default VPC
#variable "cidr_block" {
  #type        = string
  #description = "Subnet CIDR"
#}

# Provision public subnets in custom VPC
variable "private_cidr_blocks" {
  default     = ["10.20.0.0/24", "10.20.1.0/24"]
  type        = list(string)
  description = "Public Subnet CIDRs"
}

# VPC CIDR range
variable "vpc_cidr" {
  default     = "10.20.0.0/16"
  type        = string
  description = "VPC to host static web site"
}

# Variable to signal the current environment 
variable "env" {
  default     = "dev"
  type        = string
  description = "Deployment Environment"
}

# Variable to use as a name prefix 
variable "prefix" {
  default     = "dev"
  type        = string
  description = "Name prefix"
}