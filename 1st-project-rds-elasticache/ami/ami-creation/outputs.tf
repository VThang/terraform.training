output "terraform_1stproject_backend_ami" {
  depends_on  = [aws_ami_from_instance.ec2-backend-ami]
  description = "Backend AMI id"
  value       = aws_ami_from_instance.ec2-backend-ami.id
}

output "terraform_1stproject_frontend_ami" {
  depends_on  = [aws_ami_from_instance.ec2-frontend-ami]
  description = "Frontend AMI id"
  value       = aws_ami_from_instance.ec2-frontend-ami.id
}