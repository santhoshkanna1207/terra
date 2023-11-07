provider "aws" {
  region     = "ap-northeast-3"
  access_key = "AKIASHUFUHFJK4KICMWA"
  secret_key = "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"
}
resource "aws_instance" "new" {
  ami           = "ami-01c05ebdecd0ac208"
  instance_type = "t2.micro"

  tags = {
    Name = "tf-example"
  }
}
resource "aws_iam_user_ssh_key" "user" {
  username   = aws_iam_user.user.name
  encoding   = "SSH"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC0DU3cpfcEfOvgqNxRiDdkk5G0h8qfgqMR87S+5/AxfBcocbF+IzvY8FjJdX0TzadVqsZ8Vp2ATO7khNAJp7Kx1faEjw8kc2IRRacSPtwTUh+dYP0AvYJzKM/T5UCIAww2sVjpndpv2QR+mGT9iV0BIo28tickzrTu2lgLojKphOo5Wbe7Wayq6mDB95Ink33hpP0gJczzeDXzFLOce3uoQY3l1LCk+OCYredBBu0ZcHHxazLi/GMoUe3XDfSYHNZdrIGFTioyf5cMGne5uCMdxPSjpQ6+hObd0uxoOSSn/Tup1KO0/msZ+Q1q64vABxPuLJNb3f3p4aXu82waZom9NoniOxcNjtKzLMP8gY2QsbUzfjIAYpmM/0afyB/2nN2EW0S7NfuxjaVL0cP/2cOmJZHV6VH+/8+ZIgY2osYg/WXcV0OjVz0/Pj1K56nC2ZA4cMlM6E3Cje/DxbcbE8BNwjKwGkHiVVEezAZwAP8aaxaRDcCLjn4GM75VrfaILOU= root@terra"
}
