variable "instance_type" {
  type = string
  default = "t2.medium"
}

variable "ami" {
  type = string
  default = "ami-078264b8ba71bc45e"
}

variable "ec2_iam_role" {
  type = string
  default = "EC2CustomRole"
}
