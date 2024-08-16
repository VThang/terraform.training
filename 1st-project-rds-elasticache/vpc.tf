# Create VPC
resource "aws_vpc" "devops-test-1stproject-vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    "Name"  = "${var.project-prefix}vpc"
    "Owner" = "VThang"
  }
}

# Create Internet Gateway
resource "aws_internet_gateway" "devops-test-1stproject-igw" {
  vpc_id = aws_vpc.devops-test-1stproject-vpc.id
  tags = {
    "Name" = "${var.project-prefix}igw"
  }
  depends_on = [aws_vpc.devops-test-1stproject-vpc]
}

# Create Route Table
resource "aws_route_table" "devops-test-1stproject-rtb-public" {
  vpc_id = aws_vpc.devops-test-1stproject-vpc.id
  tags = {
    "Name" = "${var.project-prefix}rtb-public"
  }
  depends_on = [aws_vpc.devops-test-1stproject-vpc]
}

resource "aws_route_table" "devops-test-1stproject-rtb-private" {
  vpc_id = aws_vpc.devops-test-1stproject-vpc.id
  tags = {
    "Name" = "${var.project-prefix}rtb-private"
  }
  depends_on = [aws_vpc.devops-test-1stproject-vpc]
}

# Create Route on Route Table
resource "aws_route" "devops-test-1stproject-rt-public-1" {
  route_table_id         = aws_route_table.devops-test-1stproject-rtb-public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.devops-test-1stproject-igw.id
  depends_on             = [aws_route_table.devops-test-1stproject-rtb-public]
}

# Associate Route Table with Subnet
resource "aws_route_table_association" "devops-test-1stproject-rtb-public-associate-1" {
  route_table_id = aws_route_table.devops-test-1stproject-rtb-public.id
  subnet_id      = aws_subnet.devops-test-1stproject-subnet-public-1.id
  depends_on = [
    aws_route_table.devops-test-1stproject-rtb-public,
    aws_subnet.devops-test-1stproject-subnet-public-1
  ]
}

resource "aws_route_table_association" "devops-test-1stproject-rtb-public-associate-2" {
  route_table_id = aws_route_table.devops-test-1stproject-rtb-public.id
  subnet_id      = aws_subnet.devops-test-1stproject-subnet-public-2.id
  depends_on = [
    aws_route_table.devops-test-1stproject-rtb-public,
    aws_subnet.devops-test-1stproject-subnet-public-2
  ]
}

resource "aws_route_table_association" "devops-test-1stproject-rtb-private-associate-1" {
  route_table_id = aws_route_table.devops-test-1stproject-rtb-private.id
  subnet_id      = aws_subnet.devops-test-1stproject-subnet-private-1.id
  depends_on = [
    aws_route_table.devops-test-1stproject-rtb-private,
    aws_subnet.devops-test-1stproject-subnet-private-1
  ]
}

resource "aws_route_table_association" "devops-test-1stproject-rtb-private-associate-2" {
  route_table_id = aws_route_table.devops-test-1stproject-rtb-private.id
  subnet_id      = aws_subnet.devops-test-1stproject-subnet-private-2.id
  depends_on = [
    aws_route_table.devops-test-1stproject-rtb-private,
    aws_subnet.devops-test-1stproject-subnet-private-2
  ]
}

# Create Subnet
resource "aws_subnet" "devops-test-1stproject-subnet-public-1" {
  vpc_id               = aws_vpc.devops-test-1stproject-vpc.id
  cidr_block           = "10.0.10.0/24"
  availability_zone = var.project-avaiable-zone1
  tags = {
    "Name" = "${var.project-prefix}subnet-public1"
  }
  depends_on = [aws_vpc.devops-test-1stproject-vpc]
}

resource "aws_subnet" "devops-test-1stproject-subnet-public-2" {
  vpc_id               = aws_vpc.devops-test-1stproject-vpc.id
  cidr_block           = "10.0.20.0/24"
  availability_zone = var.project-avaiable-zone2
  tags = {
    "Name" = "${var.project-prefix}subnet-public2"
  }
  depends_on = [aws_vpc.devops-test-1stproject-vpc]
}

resource "aws_subnet" "devops-test-1stproject-subnet-private-1" {
  vpc_id               = aws_vpc.devops-test-1stproject-vpc.id
  cidr_block           = "10.0.11.0/24"
  availability_zone = var.project-avaiable-zone1
  tags = {
    "Name" = "${var.project-prefix}subnet-private1"
  }
  depends_on = [aws_vpc.devops-test-1stproject-vpc]
}

resource "aws_subnet" "devops-test-1stproject-subnet-private-2" {
  vpc_id               = aws_vpc.devops-test-1stproject-vpc.id
  cidr_block           = "10.0.21.0/24"
  availability_zone = var.project-avaiable-zone2
  tags = {
    "Name" = "${var.project-prefix}subnet-private2"
  }
  depends_on = [aws_vpc.devops-test-1stproject-vpc]
}

# Create Network ACL
resource "aws_network_acl" "devops-test-1stproject-acl-public" {
  vpc_id = aws_vpc.devops-test-1stproject-vpc.id
  tags = {
    "Name" = "${var.project-prefix}acl-public"
  }
  depends_on = [aws_vpc.devops-test-1stproject-vpc]
}

resource "aws_network_acl" "devops-test-1stproject-acl-private" {
  vpc_id = aws_vpc.devops-test-1stproject-vpc.id
  tags = {
    "Name" = "${var.project-prefix}acl-private"
  }
  depends_on = [aws_vpc.devops-test-1stproject-vpc]
}

# Create Network ACL Rule
resource "aws_network_acl_rule" "devops-test-1stproject-acl-rule-public-ingress" {
  network_acl_id = aws_network_acl.devops-test-1stproject-acl-public.id
  rule_number    = 100
  egress         = false
  protocol       = "-1"
  rule_action    = "allow"
  cidr_block     = "0.0.0.0/0"
  from_port      = 0
  to_port        = 0
  depends_on     = [aws_network_acl.devops-test-1stproject-acl-public]
}

resource "aws_network_acl_rule" "devops-test-1stproject-acl-rule-public-egress" {
  network_acl_id = aws_network_acl.devops-test-1stproject-acl-public.id
  rule_number    = 100
  egress         = true
  protocol       = "-1"
  rule_action    = "allow"
  cidr_block     = "0.0.0.0/0"
  from_port      = 0
  to_port        = 0
  depends_on     = [aws_network_acl.devops-test-1stproject-acl-public]
}

resource "aws_network_acl_rule" "devops-test-1stproject-acl-rule-private-ingress" {
  network_acl_id = aws_network_acl.devops-test-1stproject-acl-private.id
  rule_number    = 100
  egress         = false
  protocol       = "-1"
  rule_action    = "allow"
  cidr_block     = "10.0.0.0/16"
  from_port      = 0
  to_port        = 0
  depends_on     = [aws_network_acl.devops-test-1stproject-acl-private]
}

resource "aws_network_acl_rule" "devops-test-1stproject-acl-rule-private-egress" {
  network_acl_id = aws_network_acl.devops-test-1stproject-acl-private.id
  rule_number    = 100
  egress         = true
  protocol       = "-1"
  rule_action    = "allow"
  cidr_block     = "10.0.0.0/16"
  from_port      = 0
  to_port        = 0
  depends_on     = [aws_network_acl.devops-test-1stproject-acl-private]
}

# Assiciate Subnet with Network ACL
resource "aws_network_acl_association" "devops-test-1stproject-acl-association-public-1" {
  network_acl_id = aws_network_acl.devops-test-1stproject-acl-public.id
  subnet_id      = aws_subnet.devops-test-1stproject-subnet-public-1.id
  depends_on = [
    aws_network_acl.devops-test-1stproject-acl-public,
    aws_subnet.devops-test-1stproject-subnet-public-1
  ]
}

resource "aws_network_acl_association" "devops-test-1stproject-acl-association-public-2" {
  network_acl_id = aws_network_acl.devops-test-1stproject-acl-public.id
  subnet_id      = aws_subnet.devops-test-1stproject-subnet-public-2.id
  depends_on = [
    aws_network_acl.devops-test-1stproject-acl-public,
    aws_subnet.devops-test-1stproject-subnet-public-2
  ]
}

resource "aws_network_acl_association" "devops-test-1stproject-acl-association-private-1" {
  network_acl_id = aws_network_acl.devops-test-1stproject-acl-private.id
  subnet_id      = aws_subnet.devops-test-1stproject-subnet-private-1.id
  depends_on = [
    aws_network_acl.devops-test-1stproject-acl-private,
    aws_subnet.devops-test-1stproject-subnet-private-1
  ]
}

resource "aws_network_acl_association" "devops-test-1stproject-acl-association-private-2" {
  network_acl_id = aws_network_acl.devops-test-1stproject-acl-private.id
  subnet_id      = aws_subnet.devops-test-1stproject-subnet-private-2.id
  depends_on = [
    aws_network_acl.devops-test-1stproject-acl-private,
    aws_subnet.devops-test-1stproject-subnet-private-2
  ]
}

