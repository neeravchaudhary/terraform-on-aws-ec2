# Get latest AMI ID for Amazon Linux2 OS
data "aws_ami" "amz_linux2" {
  #executable_users = ["self"]
  most_recent      = true
  #name_regex       = "^myami-[0-9]{3}"
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

   filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}