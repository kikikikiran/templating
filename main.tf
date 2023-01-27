
module "example_instance" {
  source = "./templates/aws_ec2_instance.tpl"

  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id
}

