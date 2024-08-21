resource "aws_vpc" "ami-vpc" {
  cidr_block           = "10.10.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    "Name" = "ami-vpc"
  }
}

resource "aws_internet_gateway" "ami-igw" {
  vpc_id     = aws_vpc.ami-vpc.id
  depends_on = [aws_vpc.ami-vpc]
}

resource "aws_subnet" "ami-subnet-public" {
  availability_zone = "ap-southeast-1a"
  vpc_id            = aws_vpc.ami-vpc.id
  cidr_block        = "10.10.10.0/24"
  tags = {
    "Name" = "ami-subnet-public"
  }
  depends_on = [aws_vpc.ami-vpc]
}

resource "aws_route_table" "ami-rtb-public" {
  vpc_id     = aws_vpc.ami-vpc.id
  depends_on = [aws_vpc.ami-vpc]
  tags = {
    "Name" = "ami-rtb-public"
  }
}

resource "aws_route" "ami-route-public" {
  route_table_id         = aws_route_table.ami-rtb-public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.ami-igw.id
  depends_on             = [aws_route_table.ami-rtb-public]
}

resource "aws_route_table_association" "ami_rtb_association" {
  route_table_id = aws_route_table.ami-rtb-public.id
  subnet_id      = aws_subnet.ami-subnet-public.id
  depends_on = [
    aws_route_table.ami-rtb-public,
    aws_subnet.ami-subnet-public,
    aws_route.ami-route-public
  ]
}

resource "aws_security_group" "ami-sg" {
  description = "Security Group for AMI creation"
  name        = "ami-sg"
  vpc_id      = aws_vpc.ami-vpc.id
  tags = {
    "Name" = "ami-sg"
  }
  depends_on = [aws_vpc.ami-vpc]
}

resource "aws_security_group_rule" "ingress" {
  type              = "ingress"
  from_port         = 0
  to_port           = 65535
  protocol          = "all"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.ami-sg.id
  depends_on = [
    aws_security_group.ami-sg
  ]
}

resource "aws_security_group_rule" "egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 65535
  protocol          = "all"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.ami-sg.id
  depends_on = [
    aws_security_group.ami-sg
  ]
}
