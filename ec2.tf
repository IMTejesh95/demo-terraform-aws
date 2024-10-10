resource "aws_instance" "tf_ec2_1" {
  ami                  = var.ami
  instance_type        = var.instance_type
  iam_instance_profile = var.ec2_iam_role
  tags = {
    Name = "tf-demo-instance"
    uai  = "79364ghsgdh"
    demotag = "dummy"

  }
  depends_on = [  ]
}
