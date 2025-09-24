variable "name" {
  description = "Logical name for the instance (used in tags)"
  type        = string
  default     = "ec2-instance"
}

variable "ami" {
  description = "AMI ID to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Name of the key pair to attach (optional)"
  type        = string
  default     = null
}

variable "subnet_id" {
  description = "Subnet ID to launch the instance into (optional)"
  type        = string
  default     = null
}

variable "security_group_ids" {
  description = "List of security group IDs to attach"
  type        = list(string)
  default     = []
}

variable "associate_public_ip" {
  description = "Whether to associate a public IP (if subnet supports it)"
  type        = bool
  default     = true
}

variable "root_volume_size" {
  description = "Root EBS volume size in GiB"
  type        = number
  default     = 8
}

variable "root_volume_type" {
  description = "Root EBS volume type"
  type        = string
  default     = "gp3"
}

variable "delete_on_termination" {
  description = "Whether to delete root volume when instance is terminated"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Map of additional tags"
  type        = map(string)
  default     = {}
}