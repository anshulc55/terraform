
resource "aws_instance" "MyFirstInstnace" {
  count         = 3
  ami           = "ami-0e9ef0822841b8bb1"
  instance_type = "t2.micro"

  tags = {
    Name = "demoinstnce-${count.index}"
  }
}