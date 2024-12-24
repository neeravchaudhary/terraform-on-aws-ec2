# Create Security Group - SSH Traffic
resource "aws_security_group" "vpc-ssh" {
  name        = "vpc-ssh"
  description = "Dev vpc ssh"
  #vpc_id      = aws_vpc.main.id
  tags = {
    Name = "vpc-ssh"
  }
}

resource "aws_vpc_security_group_ingress_rule" "Allow port 22" {
  security_group_id = aws_security_group.vpc-ssh.id
  cidr_ipv4         = ["0.0.0.0/0"]
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}


resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_outbound" {
  security_group_id = aws_security_group.vpc-ssh.id
  cidr_ipv4         = ["0.0.0.0/0"]
  ip_protocol       = "-1" # semantically equivalent to all ports
}