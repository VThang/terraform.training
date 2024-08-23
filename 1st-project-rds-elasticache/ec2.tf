## Get AMI from Amazon Marketplace
# Ubuntu server AMI
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

# Get AMI
data "terraform_remote_state" "source-ami" {
  backend = "local"
  config = {
    path = "ami/ami-creation/terraform.tfstate"
  }
}

## Create Instances
# Create Bastion instance
resource "aws_instance" "devops-test-1stproject-ec2-bastion" {
  ami                         = data.aws_ami.ubuntu-24-LTS-amd64-server.id
  instance_type               = "t2.micro"
  key_name                    = var.ec2-bastion-key-name
  subnet_id                   = aws_subnet.devops-test-1stproject-subnet-public-1.id
  associate_public_ip_address = true
  availability_zone           = var.project-avaiable-zone1
  private_ip                  = "10.0.10.10"
  user_data                   = templatefile("scripts/userdata-bastion.sh", {})
  vpc_security_group_ids = [
    aws_security_group.devops-test-1stproject-sg-bastion.id
  ]
  tags = {
    Name = "${var.project-prefix}ec2-bastion"
  }
  depends_on = [
    aws_vpc.devops-test-1stproject-vpc,
    aws_subnet.devops-test-1stproject-subnet-public-1,
    aws_security_group.devops-test-1stproject-sg-bastion,
    var.ec2-bastion-key-name,
    var.project-avaiable-zone1
  ]
}

# Create backend server instance
resource "aws_instance" "devops-test-1stproject-ec2-webserver-1" {
  ami                         = data.terraform_remote_state.source-ami.outputs.terraform_1stproject_backend_ami
  instance_type               = "t2.micro"
  key_name                    = var.ec2-webserver-key-name
  subnet_id                   = aws_subnet.devops-test-1stproject-subnet-public-1.id
  associate_public_ip_address = false
  availability_zone           = var.project-avaiable-zone1
  private_ip                  = "10.0.10.100"
  vpc_security_group_ids = [
    aws_security_group.devops-test-1stproject-sg-webserver.id
  ]
  tags = {
    Name = "${var.project-prefix}ec2-webserver-1"
  }
  depends_on = [
    aws_vpc.devops-test-1stproject-vpc,
    aws_subnet.devops-test-1stproject-subnet-public-1,
    aws_security_group.devops-test-1stproject-sg-webserver,
    var.ec2-webserver-key-name,
    var.project-avaiable-zone1
  ]
}


# Create frontend instance

