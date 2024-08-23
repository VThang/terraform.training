data "terraform_remote_state" "source-ami-machine" {
  backend = "local"
  config = {
    path = "../ami-machine/terraform.tfstate"
  }
}

resource "aws_ami_from_instance" "ec2-backend-ami" {
  name               = var.ec2-backend-ami-name
  source_instance_id = data.terraform_remote_state.source-ami-machine.outputs.backend-ami-instance-id
  depends_on = [
    data.terraform_remote_state.source-ami-machine
  ]
}

resource "aws_ami_from_instance" "ec2-frontend-ami" {
  name               = var.ec2-frontend-ami-name
  source_instance_id = data.terraform_remote_state.source-ami-machine.outputs.frontend-ami-instance-id
  depends_on = [
    data.terraform_remote_state.source-ami-machine
  ]
}
