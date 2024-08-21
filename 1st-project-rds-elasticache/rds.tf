# # Create Database instance
# resource "aws_db_subnet_group" "devops-test-1stproject-db-subnet-group" {
#   name = "${var.project-prefix}db-subnet-group"
#   subnet_ids = [
#     aws_subnet.devops-test-1stproject-subnet-private-1.id,
#     aws_subnet.devops-test-1stproject-subnet-private-2.id
#   ]
#   depends_on = [
#     aws_subnet.devops-test-1stproject-subnet-private-1,
#     aws_subnet.devops-test-1stproject-subnet-private-2
#   ]
#   tags = {
#     "Name" = "${var.project-prefix}db-subnet-group"
#   }
# }

# # Create Aurora cluster
# resource "aws_rds_cluster" "devops-test-1stproject-aurora-cluster" {
#   cluster_identifier       = "${var.project-prefix}aurora-cluster"
#   engine                   = var.rds-engine
#   engine_version           = var.rds-engine-version
#   database_name            = var.rds-database-name
#   master_username          = var.rds-master-username
#   master_password          = var.rds-master-password
#   apply_immediately        = true
#   backup_retention_period  = 0
#   db_subnet_group_name     = aws_db_subnet_group.devops-test-1stproject-db-subnet-group.name
#   delete_automated_backups = true
#   skip_final_snapshot      = true
#   vpc_security_group_ids = [
#     aws_security_group.devops-test-1stproject-sg-database.id
#   ]
# }

# resource "aws_rds_cluster_instance" "devops-test-1stproject-aurora-cluster-instance-writer" {
#   identifier          = "${var.project-prefix}aurora-cluster-instance-writer"
#   cluster_identifier  = aws_rds_cluster.devops-test-1stproject-aurora-cluster.id
#   instance_class      = "db.t3.medium"
#   engine              = aws_rds_cluster.devops-test-1stproject-aurora-cluster.engine
#   engine_version      = aws_rds_cluster.devops-test-1stproject-aurora-cluster.engine_version
#   publicly_accessible = false
#   availability_zone   = var.project-avaiable-zone1
#   apply_immediately   = true
#   tags = {
#     "Name" = "${var.project-prefix}aurora-cluster-instance-writer"
#   }
# }

# resource "aws_rds_cluster_instance" "devops-test-1stproject-aurora-cluster-instance-reader" {
#   identifier          = "${var.project-prefix}aurora-cluster-instance-reader"
#   cluster_identifier  = aws_rds_cluster.devops-test-1stproject-aurora-cluster.id
#   instance_class      = "db.t3.medium"
#   engine              = aws_rds_cluster.devops-test-1stproject-aurora-cluster.engine
#   engine_version      = aws_rds_cluster.devops-test-1stproject-aurora-cluster.engine_version
#   publicly_accessible = false
#   availability_zone   = var.project-avaiable-zone2
#   apply_immediately   = true
#   tags = {
#     "Name" = "${var.project-prefix}aurora-cluster-instance-reader"
#   }
# }
