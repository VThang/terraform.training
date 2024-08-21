# Get AMI from Amazon Marketplace
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
  owners = ["099720109477"] # Canonical Amazon
}

# Backend AMI machine
resource "aws_instance" "backend-ami" {
  ami                         = data.aws_ami.ubuntu-24-LTS-amd64-server.id
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  availability_zone           = "ap-southeast-1a"
  key_name                    = "1stproject-bastion-key"
  subnet_id                   = aws_subnet.ami-subnet-public.id
  user_data                   = templatefile("./scripts/backend-userdata.sh", { github-clone-token = var.github_clone_token })
  vpc_security_group_ids = [
    aws_security_group.ami-sg.id
  ]
  tags = {
    "Name" = "1stproject-backend-ami"
  }
}

# # Frontend AMI machine
# resource "aws_instance" "frontend-ami" {
#   ami                         = data.aws_ami.ubuntu-24-LTS-amd64-server.id
#   instance_type               = "t2.micro"
#   associate_public_ip_address = true
#   availability_zone           = "ap-southeast-1a"
#   key_name                    = "1stproject-bastion-key"
#   subnet_id                   = aws_subnet.ami-subnet-public.id
#   user_data                   = templatefile("./scripts/frontend-userdata.sh.sh", { github-clone-token = var.github-clone-token })
#   vpc_security_group_ids = [
#     aws_security_group.ami-sg.id
#   ]
#   tags = {
#     "Name" = "1stproject-frontend-ami"
#   }
# }
