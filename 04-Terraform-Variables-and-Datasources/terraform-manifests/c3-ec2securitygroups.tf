# Create Security Group - SSH Traffic

resource "aws_security_group" "vpc-ssh" {
  name        = "vpc-ssh"
  description = "Dev vpc ssh"
  #vpc_id      = aws_vpc.main.id
  tags = {
    Name = "vpc-ssh"
  }

  ingress {
    description = "Allow Port 22"
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 22
    to_port   = 22
  }

  egress {
    description = "Allow all Ip and Ports outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "vpc-web" {
  name        = "vpc-web"
  description = "Dev_vpc_web"
  #vpc_id      = aws_vpc.main.id
  tags = {
    Name = "vpc-web"
  }

  ingress {
    description = "Allow Port 80"
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 80
    to_port   = 80
  }

  ingress {
    description = "Allow Port 443"
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 443
    to_port   = 443
  }

  egress {
    description = "Allow all Ip and Ports outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}