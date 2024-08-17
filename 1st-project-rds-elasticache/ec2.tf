resource "tls_private_key" "bastion-private-key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "bastion-key-pair" {
  key_name   = "bastion-key-pair"
  public_key = tls_private_key.bastion-private-key.public_key_openssh
}

data "aws_ami" "ubuntu-24-LTS-amd64-server" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["679593333241"] # Canonical Group
}

# # Create Bastion instance
# resource "aws_instance" "devops-test-1stproject-ec2-bastion" {
#   ami           = data.aws_ami.ubuntu-24-LTS-amd64-server.id
#   instance_type = "t2.micro"
#   key_name      = aws_key_pair.bastion-key-pair.key_name
#   subnet_id     = aws_subnet.devops-test-1stproject-subnet-public-1.id
#   security_groups = [
#     aws_security_group.devops-test-1stproject-sg-bastion.name
#   ]
#   associate_public_ip_address = true
#   availability_zone = var.project-avaiable-zone1

# }

# Create backend server instance
# Create frontend instance
