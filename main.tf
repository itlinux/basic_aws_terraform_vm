resource "aws_instance" "centos" {
  depends_on             = []
  ami                    = var.linux_ami
  instance_type          = var.ec2_size
  count                  = var.instance_count
  vpc_security_group_ids = [
      aws_security_group.remo_sg.id,
  ]
  key_name                    = aws_key_pair.generated.key_name
  associate_public_ip_address = var.public_ip
  subnet_id                   = var.se_subnet_id
  tags                        = {
          Name                = "remo-vm-terraform"
          owner               = "Remo Mattei"
          team                = "SA Team"
         }
}
