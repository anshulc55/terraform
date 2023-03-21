
resource "aws_instance" "Udemy-Instance" {
  ami           = "	ami-0bac99f077c41ae58"
  instance_type = "t2.micro"

  tags = {
    Name = "demoinstnce-${count.index}"
  }
}