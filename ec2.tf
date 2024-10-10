resource "aws_instance" "tf_ec2_1" {
  ami                  = var.ami
  instance_type        = var.instance_type
  iam_instance_profile = var.ec2_iam_role
  count = 2
  tags = {
    Name = "tf-demo-instance"
    DummyTag = "DummyValue"
  }
  depends_on = [ aws_security_group.tf_demo_sg ]
}

resource "aws_security_group" "tf_demo_sg" {
  name = "tf-demo-sg"
  description = "Allow TLS/HTTPS and SSH from Anywhere"
  
}

resource "aws_security_group_rule" "allow_tls" {
  security_group_id = aws_security_group.tf_demo_sg.id
  from_port = 443
  protocol = "TCP"
  to_port = 443
  cidr_blocks = ["0.0.0.0/0"]
  type = "ingress"
}

resource "aws_security_group_rule" "allow_ssh" {
  security_group_id = aws_security_group.tf_demo_sg.id
  from_port = 22
  protocol = "TCP"
  to_port = 22
  cidr_blocks = ["0.0.0.0/0"]
  type = "ingress"
}
