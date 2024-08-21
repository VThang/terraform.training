output "backend-ami-public-ip" {
  depends_on  = [aws_instance.backend-ami]
  description = "value of backend-ami public ip"
  value       = aws_instance.backend-ami.public_ip
}

output "backend-ami-instance-id" {
  depends_on  = [aws_instance.backend-ami]
  description = "value of backend-ami instance id"
  value       = aws_instance.backend-ami.id
}

# output "frontend-ami-public-ip" {
#   depends_on  = [aws_instance.frontend-ami]
#   description = "value of frontend-ami public ip"
#   value       = aws_instance.frontend-ami.public_ip
# }

# output "frontend-ami-instance-id" {
#   depends_on  = [aws_instance.frontend-ami]
#   description = "value of frontend-ami instance id"
#   value       = aws_instance.frontend-ami.id
# }
