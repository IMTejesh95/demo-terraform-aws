resource "aws_instance" "tf_ec2_1" {
  ami                  = var.ami
  instance_type        = var.instance_type
  iam_instance_profile = var.ec2_iam_role
  tags = {
    Name = "rf-demo-instance"
    uai  = "UAI617263"
  }
}
