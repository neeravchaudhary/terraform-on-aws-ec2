# Terraform Output Values

# EC2 Instance Public IP
output "instance_publicip" {
  description = "Ec2 Instance Public IP"
  value = aws_instance.myec2vm.public_ip
}

# EC2 Instance Public DNS

output "instance_publicdns" {
  description = "Ec2 Instance Public IP"
  value = aws_instance.myec2vm.public_dns
}
