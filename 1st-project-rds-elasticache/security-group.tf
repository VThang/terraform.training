## Create Security Group for Bastion host
resource "aws_security_group" "devops-test-1stproject-sg-bastion" {
  description = "Security Group for bastion host"
  name        = "${var.project-prefix}sg-bastion"
  vpc_id      = aws_vpc.devops-test-1stproject-vpc.id
  depends_on  = [aws_vpc.devops-test-1stproject-vpc]
}

# Create Security Group rule for Bastion host
resource "aws_security_group_rule" "devops-test-1stproject-sg-rule-bastion-ssh-ingress-1" {
  description       = "Allow SSH access from anywhere"
  type              = "ingress"
  protocol          = "tcp"
  from_port         = 22
  to_port           = 22
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.devops-test-1stproject-sg-bastion.id
  depends_on        = [aws_security_group.devops-test-1stproject-sg-bastion]
}

resource "aws_security_group_rule" "devops-test-1stproject-sg-rule-bastion-ssh-ingress-2" {
  description       = "Allow SSH access from anywhere"
  type              = "ingress"
  protocol          = "udp"
  from_port         = 22
  to_port           = 22
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.devops-test-1stproject-sg-bastion.id
  depends_on        = [aws_security_group.devops-test-1stproject-sg-bastion]
}

resource "aws_security_group_rule" "devops-test-1stproject-sg-rule-bastion-ssh-egress" {
  description       = "Allow All traffic to anywhere"
  type              = "egress"
  protocol          = "all"
  from_port         = 22
  to_port           = 22
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.devops-test-1stproject-sg-bastion.id
  depends_on        = [aws_security_group.devops-test-1stproject-sg-bastion]
}

## Create Security Group for ALB
resource "aws_security_group" "devops-test-1stproject-sg-alb" {
  description = "Security Group for Application Load Balancer"
  name        = "${var.project-prefix}sg-alb"
  vpc_id      = aws_vpc.devops-test-1stproject-vpc.id
  depends_on  = [aws_vpc.devops-test-1stproject-vpc]
}

# Create Security Group rule for ALB
resource "aws_security_group_rule" "devops-test-1stproject-sg-rule-alb-http-ingress" {
  description       = "Allow HTTP access from Anywhere"
  type              = "ingress"
  protocol          = "tcp"
  from_port         = 80
  to_port           = 80
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.devops-test-1stproject-sg-alb.id
  depends_on        = [aws_security_group.devops-test-1stproject-sg-alb]
}

resource "aws_security_group_rule" "devops-test-1stproject-sg-rule-alb-https-ingress" {
  description       = "Allow HTTPS access from Anywhere"
  type              = "ingress"
  protocol          = "tcp"
  from_port         = 443
  to_port           = 443
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.devops-test-1stproject-sg-alb.id
  depends_on        = [aws_security_group.devops-test-1stproject-sg-alb]
}

resource "aws_security_group_rule" "devops-test-1stproject-sg-rule-alb-http-egress" {
  description              = "Allow HTTP access to Webserver"
  type                     = "egress"
  protocol                 = "tcp"
  from_port                = 3000
  to_port                  = 3000
  source_security_group_id = aws_security_group.devops-test-1stproject-sg-webserver.id
  security_group_id        = aws_security_group.devops-test-1stproject-sg-alb.id
  depends_on = [
    aws_security_group.devops-test-1stproject-sg-alb,
    aws_security_group.devops-test-1stproject-sg-webserver
  ]
}

## Create Security Group for Web Server
resource "aws_security_group" "devops-test-1stproject-sg-webserver" {
  description = "Security Group for Web Server"
  name        = "${var.project-prefix}sg-webserver"
  vpc_id      = aws_vpc.devops-test-1stproject-vpc.id
  depends_on  = [aws_vpc.devops-test-1stproject-vpc]
}

# Create Security Group rule for Web Server
resource "aws_security_group_rule" "devops-test-1stproject-sg-rule-webserver-ssh-ingress-1" {
  description              = "Allow SSH access from Bastion"
  type                     = "ingress"
  protocol                 = "tcp"
  from_port                = 22
  to_port                  = 22
  source_security_group_id = aws_security_group.devops-test-1stproject-sg-bastion.id
  security_group_id        = aws_security_group.devops-test-1stproject-sg-webserver.id
  depends_on = [
    aws_security_group.devops-test-1stproject-sg-webserver,
    aws_security_group.devops-test-1stproject-sg-bastion
  ]
}

resource "aws_security_group_rule" "devops-test-1stproject-sg-rule-webserver-ssh-ingress-2" {
  description              = "Allow SSH access from Bastion"
  type                     = "ingress"
  protocol                 = "udp"
  from_port                = 22
  to_port                  = 22
  source_security_group_id = aws_security_group.devops-test-1stproject-sg-bastion.id
  security_group_id        = aws_security_group.devops-test-1stproject-sg-webserver.id
  depends_on = [
    aws_security_group.devops-test-1stproject-sg-webserver,
    aws_security_group.devops-test-1stproject-sg-bastion
  ]
}

resource "aws_security_group_rule" "devops-test-1stproject-sg-rule-webserver-http-ingress" {
  description              = "Allow HTTP access from ALB"
  type                     = "ingress"
  protocol                 = "tcp"
  from_port                = 3000
  to_port                  = 3000
  source_security_group_id = aws_security_group.devops-test-1stproject-sg-alb.id
  security_group_id        = aws_security_group.devops-test-1stproject-sg-webserver.id
  depends_on = [
    aws_security_group.devops-test-1stproject-sg-webserver,
    aws_security_group.devops-test-1stproject-sg-alb
  ]
}

resource "aws_security_group_rule" "devops-test-1stproject-sg-rule-webserver-self-ingress" {
  description              = "Allow SSH access from Self"
  type                     = "ingress"
  protocol                 = "all"
  from_port                = 0
  to_port                  = 0
  source_security_group_id = aws_security_group.devops-test-1stproject-sg-webserver.id
  security_group_id        = aws_security_group.devops-test-1stproject-sg-webserver.id
  depends_on               = [aws_security_group.devops-test-1stproject-sg-webserver]
}

resource "aws_security_group_rule" "devops-test-1stproject-sg-rule-webserver-egress" {
  description              = "Allow connect to Database"
  type                     = "egress"
  protocol                 = "all"
  from_port                = 0
  to_port                  = 0
  source_security_group_id = aws_security_group.devops-test-1stproject-sg-webserver.id
  security_group_id        = aws_security_group.devops-test-1stproject-sg-webserver.id
  depends_on = [
    aws_security_group.devops-test-1stproject-sg-webserver,
    aws_security_group.devops-test-1stproject-sg-elasticache
  ]
}

## Create Security Group for Database
resource "aws_security_group" "devops-test-1stproject-sg-database" {
  description = "Security Group for Databse"
  name        = "${var.project-prefix}sg-database"
  vpc_id      = aws_vpc.devops-test-1stproject-vpc.id
  depends_on  = [aws_vpc.devops-test-1stproject-vpc]
}

# Create Security Group rule for Database
resource "aws_security_group_rule" "devops-test-1stproject-sg-rule-database-ingress" {
  description              = "Allow connection from Web Server"
  type                     = "ingress"
  protocol                 = "tcp"
  from_port                = 3306
  to_port                  = 3306
  source_security_group_id = aws_security_group.devops-test-1stproject-sg-webserver.id
  security_group_id        = aws_security_group.devops-test-1stproject-sg-database.id
  depends_on = [
    aws_security_group.devops-test-1stproject-sg-database,
    aws_security_group.devops-test-1stproject-sg-webserver
  ]
}

resource "aws_security_group_rule" "devops-test-1stproject-sg-rule-database-self-ingress" {
  description              = "Allow ALL traffic from Self"
  type                     = "ingress"
  protocol                 = "all"
  from_port                = 0
  to_port                  = 0
  source_security_group_id = aws_security_group.devops-test-1stproject-sg-database.id
  security_group_id        = aws_security_group.devops-test-1stproject-sg-database.id
  depends_on = [
    aws_security_group.devops-test-1stproject-sg-database
  ]
}

resource "aws_security_group_rule" "devops-test-1stproject-sg-rule-database-self-egress" {
  description              = "Allow All traffic to Self"
  type                     = "egress"
  protocol                 = "all"
  from_port                = 0
  to_port                  = 0
  source_security_group_id = aws_security_group.devops-test-1stproject-sg-database.id
  security_group_id        = aws_security_group.devops-test-1stproject-sg-database.id
  depends_on = [
    aws_security_group.devops-test-1stproject-sg-database
  ]
}

## Create Security Group for Elasticache
resource "aws_security_group" "devops-test-1stproject-sg-elasticache" {
  description = "Security Group for Elasticache"
  name        = "${var.project-prefix}sg-elasticache"
  vpc_id      = aws_vpc.devops-test-1stproject-vpc.id
  depends_on  = [aws_vpc.devops-test-1stproject-vpc]
}

# Create Security Group rule for Elasticache
resource "aws_security_group_rule" "devops-test-1stproject-sg-elasticache-ingress" {
  description              = "Allow connection from Web Server"
  type                     = "ingress"
  protocol                 = "tcp"
  from_port                = 6379
  to_port                  = 6379
  source_security_group_id = aws_security_group.devops-test-1stproject-sg-webserver.id
  security_group_id        = aws_security_group.devops-test-1stproject-sg-elasticache.id
  depends_on = [
    aws_security_group.devops-test-1stproject-sg-elasticache,
    aws_security_group.devops-test-1stproject-sg-webserver
  ]
}
