
resource "aws_key_pair" "fc-darkstar-keypair" {
  key_name = "fc-darkstar-keypair"
  public_key = file("~/.ssh/id_rsa.pub")
}

