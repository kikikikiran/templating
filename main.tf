template "aws_ec2_instance" {
  source = "./templates/aws_ec2_instance.tpl"

  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id
}

module "aws_instance" {
  source = "template.aws_ec2_instance"

  ami           = "ami-0aa7d40eeae50c9a9"
  instance_type = "t2.micro"
  key_name      = "hpe"
  subnet_id     = "subnet-02f92f936462845ec"
}
