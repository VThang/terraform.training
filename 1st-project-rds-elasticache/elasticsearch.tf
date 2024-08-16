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

resource "aws_elasticache_user" "devops-test-1stproject-elasticache-user" {
  user_id              = "redis"
  user_name            = "redis"
  access_string        = "on ~* +@all"
  engine               = "REDIS"
  no_password_required = true
  tags = {
    "Name" = "${var.project-prefix}elasticache-user"
  }
}

resource "aws_elasticache_user_group" "devops-test-1stproject-elasticache-user-group" {
  engine        = "REDIS"
  user_group_id = "elasticache-user-group"
  user_ids = [
    aws_elasticache_user.devops-test-1stproject-elasticache-user.user_id,
    "default"
  ]
}

resource "aws_elasticache_replication_group" "devops-test-1stproject-elasticache-replication-group" {
  description                = "Replication Group for Elasticache redis"
  automatic_failover_enabled = true
  replication_group_id       = "elasticache-replication-group"
  engine                     = "redis"
  node_type                  = "cache.t2.micro"
  num_cache_clusters         = 2
  parameter_group_name       = "default.redis7"
  engine_version             = "7.1"
  port                       = 6379
  subnet_group_name          = aws_elasticache_subnet_group.devops-test-1stproject-elasticache-subnet-group.name
  apply_immediately          = true
  snapshot_retention_limit   = 0
  security_group_ids = [
    aws_security_group.devops-test-1stproject-sg-elasticache.id
  ]
  depends_on = [
    aws_security_group.devops-test-1stproject-sg-elasticache,
    aws_elasticache_subnet_group.devops-test-1stproject-elasticache-subnet-group
  ]
  tags = {
    "Name" = "${var.project-prefix}elasticache-replication-group"
  }
}
