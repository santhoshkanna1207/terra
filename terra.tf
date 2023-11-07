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
