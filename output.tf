output "instances" {
  description = "ID of the EC2 instance"
  value       = {
    for instance in aws_instance.tf_ec2_1:
      instance.id => instance.id
  }
}

