# Create Elasticache instance
resource "aws_elasticache_subnet_group" "devops-test-1stproject-elasticache-subnet-group" {
  name = "devops-test-1stproject-elasticache-subnet-group"
  subnet_ids = [
    aws_subnet.devops-test-1stproject-subnet-private-1.id,
    aws_subnet.devops-test-1stproject-subnet-private-2.id
  ]
  depends_on = [
    aws_subnet.devops-test-1stproject-subnet-private-1,
    aws_subnet.devops-test-1stproject-subnet-private-2
  ]
  tags = {
    "Name" = "${var.project-prefix}elasticache-subnet-group"
  }
}
