variable "ami" {
  description = "ID de la AMI a usar"
  type        = string
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
}

variable "security_group_id" {
  description = "ID del Security Group"
  type        = string
}

variable "iam_instance_profile" {
  description = "Nombre del IAM instance profile"
  type        = string
}