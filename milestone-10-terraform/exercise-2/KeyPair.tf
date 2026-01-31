resource "aws_key_pair" "dove-key" {
  key_name   = "dove-key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIM6GLuLjs90q4RvTh7neH3/FYf14kHsIzXMnW+CLCG/h darsh@lucifer"
}