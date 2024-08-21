variable "project-prefix" {
  description = "Prefix of the project."
  type        = string
  default     = "devops-test-1stproject-"
}

variable "project-avaiable-zone1" {
  description = "Name of AZ1"
  type        = string
  default     = "ap-southeast-1a"
}

variable "project-avaiable-zone2" {
  description = "Name of AZ2"
  type        = string
  default     = "ap-southeast-1b"
}

variable "rds-master-username" {
  description = "RDS username"
  type        = string
  default     = "admin"
}

variable "rds-master-password" {
  description = "RDS username"
  type        = string
  default     = "6ltM75Gq7c4g8Spw"
  sensitive   = true
}

variable "rds-database-name" {
  type    = string
  default = "studentsdb"
}

variable "rds-engine" {
  type    = string
  default = "aurora-mysql"
}
variable "rds-engine-version" {
  type    = string
  default = "8.0.mysql_aurora.3.07.0"
}

variable "ec2-bastion-key-name" {
  type    = string
  default = "1stproject-bastion-key"
}

variable "ec2-webserver-key-name" {
  type    = string
  default = "1stproject-webserver-key"
}
variable "ec2-backend-ami-name" {
  type    = string
  default = "1stproject-backend-ami"
}