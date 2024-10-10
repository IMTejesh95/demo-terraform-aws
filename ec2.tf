resource "aws_instance" "tf_ec2_1" {
  ami                  = var.ami
  instance_type        = var.instance_type
  iam_instance_profile = var.ec2_iam_role
  tags = {
    Name = "tf-demo-instance"
    uai  = "UAI617263"
    demotag = "dummy"

  }
  depends_on = [  ]
}
