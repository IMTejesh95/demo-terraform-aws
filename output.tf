output "instances" {
  description = "IDs of the EC2 instances"
  value       = [for instance in aws_instance.demo_ec2 : instance.id]
}

