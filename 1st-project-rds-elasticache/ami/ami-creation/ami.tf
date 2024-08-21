data "terraform_remote_state" "source-ami-machine" {
  backend = "local"
  config = {
    path = "../ami-machine/terraform.tfstate"
  }
}

resource "aws_ami_from_instance" "ec2-backend-ami-name" {
  name               = var.ec2-backend-ami-name
  source_instance_id = data.terraform_remote_state.source-ami-machine.outputs.backend-ami-instance-id
  depends_on = [
    data.terraform_remote_state.source-ami-machine
  ]
}
