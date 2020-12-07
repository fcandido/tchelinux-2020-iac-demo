
resource "aws_instance" "tchelinux-web" {
  ami             = data.aws_ami.ubuntu.id
  instance_type   = "t3.micro"
  key_name        = "fc-darkstar-keypair"
  security_groups = ["allow_ssh","allow_http"]

  tags = {
    Name          = "Techelinux-web"
  }
}
