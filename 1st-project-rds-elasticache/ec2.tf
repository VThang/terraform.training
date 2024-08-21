# resource "tls_private_key" "bastion-private-key" {
#   algorithm = "RSA"
#   rsa_bits  = 4096
# }

# resource "aws_key_pair" "bastion-key-pair" {
#   key_name   = "bastion-key-pair"
#   public_key = tls_private_key.bastion-private-key.public_key_openssh
# }

data "aws_ami" "ubuntu-24-LTS-amd64-server" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"] # Canonical Amazon
}

# Create Bastion instance
resource "aws_instance" "devops-test-1stproject-ec2-bastion" {
  ami                         = data.aws_ami.ubuntu-24-LTS-amd64-server.id
  instance_type               = "t2.micro"
  key_name                    = var.ec2-bastion-key-name
  subnet_id                   = aws_subnet.devops-test-1stproject-subnet-public-1.id
  associate_public_ip_address = true
  availability_zone           = var.project-avaiable-zone1
  private_ip                  = "10.0.10.10"
  user_data                   = <<-EOF
#!/bin/bash
cat > /home/ubuntu/1stproject-webserver-key.pem << 1EOF
-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEAiOm3zYnm3XDUfvkVgoMMk2EthGkG7fUz11nbNEBmudRo19zg
M+5DIa6aaxYKX88VtgvO+OBZd7gN8Qee7oKuhnCmZltp5NfOzv5n8OtbTObxkJr/
039kjS2pdoYTlqgh/sOE/xmYwKYqSO5UGi+zmtD8xpM12iS6XrkD+Z9965M2CAQs
/GBUETJl8/g/7MNEEU/kW6syTv5MlhaM0OvKXXZ6t5z5ikA+ifErb6JH4Oyjmn26
275LXk6qUPUABHOXsMycbuR4mtMe0osuiTtln9eL9AH8YltucUpHZLWW0JOaa2ih
H6egtN0PtkFZHpchBrsiFGRvxuCxbCZcq4ZJlQIDAQABAoIBAHmkRVSNSBvIalOh
lFXPfzXWKi2xbqGusG+N+y7SZTKHoNrg+CXLc8OSMMoh2/fBsoV6ulnuYi72zRQv
9Cnu24bAwWbBozTZ9Hl+GPU49nY93bPfspnDXp/8SMrwVqkNGp8SMbDAmjHXsEv5
y6k0ZnuPYHZBRqBY72jHMtvus16/o1Dcuo1WfQDDDlRvfYQZ1HQTATORIYJNtvSJ
el5w0NjmLPXJU+x9JY1LKxKoAiCfMWY3gXo+1jf3QETUehtLCytOWWAFt+cvHC4B
+P8jKHR0cHG72SK7Xuuv9mVuDdPB5x9BGw37onDzjZKyWvZMe02JcpZW8XJcGnHN
2KJ2TYECgYEA+Czu7uUmjDdvd1OgKCHHJsnxSc6DXz1zYz1yHu5cc4/1WvyMC8Wq
tovLyPypV1LaV7ckDCZ4MiHpaT+JztakGXYt6GJU3MMhOiiTRpOJyRwK5jfzySje
sdd11QxZA6P8/4+OBAH6x+GWUehWwliUG7paSYiTaQ0PdXz5GSXri3UCgYEAjTrE
A4hFQjceSLORGEqhHsUH3v2TJjJ/mjPEJ8lD+va2pyrvnNu8eLrzKSdQzC8C8Gbx
6CMshGdQHCZJOW/OmBnyVimpXCHO3picKHqp2CtfEB0WOpT2/D3AsCMv9QwiRrP8
FoXZaK3ThI4pauxnvUueaSV6r+M2kUbdjT4ToaECgYEAyvf8xbb1ytF/wUjMgGX3
uZqJU0KpoNfiKfTUA8YQKJdBJBPN+cbE8pzsosk5OejSF9D5k1JXFTE081X6wAY9
mXFU5GyfWRnhb+5FXQBHPQpJQ7XZFNjvIOXFQePiXR7eSKjAjjiMQLMXvI9XfYTy
RKcpNmCTpuP+k6kNFOs1dA0CgYB9eGgMe1SMr0tIa7/MRQE/xOxpP/8rQFH9PWBX
uIecvvMnMQ4P3WhkGjNNrJAr1thVnB/ujNFQEDkryRfk32A74VFbG0hLgf235P1X
OSML2fxq5GyLPyzujC5UTe6dVlpdVinwGJo+VbBFY8eIJt9DXZsu7w1Aliw0hTDv
+uaWAQKBgQCdTyXLnX/O4Vql0lhSaCk9TaH6Dc1gCZ4gFfyp2T8t/GxZv89fpiKX
nCssTqWF0zbXmwnHutZTZlR2LIq+RaoTLmujdl/bfbCE7tnjVQKrbgTw0e+MRPb2
DBr72qMkCcyJZjNkgFeB5RFqpH1wAlS5CWXij/8e2jpQkLTtxDwgUA==
-----END RSA PRIVATE KEY-----
1EOF
chown ubuntu:ubuntu /home/ubuntu/1stproject-webserver-key.pem
chmod 400 /home/ubuntu/1stproject-webserver-key.pem
EOF
  vpc_security_group_ids = [
    aws_security_group.devops-test-1stproject-sg-bastion.id
  ]
  tags = {
    Name = "${var.project-prefix}ec2-bastion"
  }
  depends_on = [
    aws_vpc.devops-test-1stproject-vpc,
    aws_subnet.devops-test-1stproject-subnet-public-1,
    aws_security_group.devops-test-1stproject-sg-bastion,
    var.ec2-bastion-key-name,
    var.project-avaiable-zone1
  ]
}

##############################

resource "aws_network_interface" "backend1-network-interface-private" {
  subnet_id = aws_subnet.devops-test-1stproject-subnet-public-1.id
  private_ips = [
    "10.0.10.100"
  ]
  security_groups = [
    aws_security_group.devops-test-1stproject-sg-webserver.id
  ]
  depends_on = [
    aws_subnet.devops-test-1stproject-subnet-public-1,
  ]
}

resource "aws_network_interface" "backend1-network-interface-public" {
  subnet_id = aws_subnet.devops-test-1stproject-subnet-public-1.id
  private_ips = [
    "10.0.10.101"
  ]
  security_groups = [
    aws_security_group.devops-test-1stproject-sg-webserver.id
  ]
  depends_on = [
    aws_subnet.devops-test-1stproject-subnet-public-1,
  ]
}

resource "aws_eip" "temporary-public-ip" {
  domain = "vpc"
  depends_on = [
    aws_vpc.devops-test-1stproject-vpc
  ]
}


# Create backend server instance
resource "aws_instance" "devops-test-1stproject-ec2-backend1" {
  ami               = data.aws_ami.ubuntu-24-LTS-amd64-server.id
  instance_type     = "t2.micro"
  key_name          = var.ec2-webserver-key-name
  availability_zone = var.project-avaiable-zone1
  network_interface {
    network_interface_id = aws_network_interface.backend1-network-interface-private.id
    device_index         = 0
  }
  tags = {
    Name = "${var.project-prefix}ec2-backend1"
  }
  depends_on = [
    aws_vpc.devops-test-1stproject-vpc,
    aws_subnet.devops-test-1stproject-subnet-public-1,
    aws_security_group.devops-test-1stproject-sg-webserver,
    aws_network_interface.backend1-network-interface-private,
    var.ec2-webserver-key-name,
    var.project-avaiable-zone1
  ]
}

# resource "aws_eip_association" "temporary-public-ip-association" {
#   network_interface_id = aws_network_interface.backend1-network-interface-public.id
#   allocation_id        = aws_eip.temporary-public-ip.id
#   depends_on = [
#     aws_eip.temporary-public-ip,
#     aws_network_interface.backend1-network-interface-public,
#     aws_instance.devops-test-1stproject-ec2-backend1
#   ]
# }

# resource "aws_network_interface_attachment" "temprary-public-ip-attachment" {
#   network_interface_id = aws_network_interface.backend1-network-interface-public.id
#   device_index         = 1
#   instance_id          = aws_instance.devops-test-1stproject-ec2-backend1.id
#   depends_on = [
#     aws_instance.devops-test-1stproject-ec2-backend1,
#     aws_network_interface.backend1-network-interface-public
#   ]
# }


# Create frontend instance


# # Timer to remove public IP from instance
# resource "time_sleep" "timer-remove-public-ip" {
#   depends_on = [
#     aws_instance.devops-test-1stproject-ec2-backend1
#   ]
#   create_duration = "20s"
# }

# # Disassociate the Elastic IP after the delay
# # resource "aws_eip_association" "temporary-public-ip-association-after" {
# #   network_interface_id = aws_network_interface.backend1-network-interface-public.id
# #   allocation_id        = aws_eip.temporary-public-ip.id
# #   count                = 0
# #   depends_on = [
# #     time_sleep.timer-remove-public-ip
# #   ]
# # }

# resource "aws_network_interface_attachment" "temprary-public-ip-attachment-after" {
#   network_interface_id = aws_network_interface.backend1-network-interface-public.id
#   device_index         = 1
#   instance_id          = aws_instance.devops-test-1stproject-ec2-backend1.id
#   count                = 0
#   depends_on = [
#     time_sleep.timer-remove-public-ip,
#   ]
# }
