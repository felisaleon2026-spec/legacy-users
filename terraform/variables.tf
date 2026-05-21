variable "app_port" {
  default = 8000
}

variable "instance_type" {
  default = "t3.micro"
}

variable "ami" {
  default = "ami-0f9de6e2d2f067fca"
}

variable "iam_instance_profile" {
  default = "LabInstanceProfile"
}