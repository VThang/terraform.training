# output "ec2-bastion-private-key" {
#   depends_on  = [tls_private_key.bastion-private-key]
#   description = "Bastion private key"
#   value       = tls_private_key.bastion-private-key.private_key_openssh
#   sensitive   = true
# }

# output "ec2-bastion-public-key" {
#   depends_on  = [aws_key_pair.bastion-key-pair]
#   description = "Bastion public key"
#   value       = aws_key_pair.bastion-key-pair.public_key
# }

output "ec2-bastion-public-ip" {
  depends_on = [
    aws_instance.devops-test-1stproject-ec2-bastion
  ]
  value = aws_instance.devops-test-1stproject-ec2-bastion.public_ip
}
