output "ec2-bastion-public-ip" {
  depends_on = [
    aws_instance.devops-test-1stproject-ec2-bastion
  ]
  value = aws_instance.devops-test-1stproject-ec2-bastion.public_ip
}
