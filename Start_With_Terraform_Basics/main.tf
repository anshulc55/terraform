resource "aws_instance" "MyFirstInstnace" {
  count         = 5
  ami           = "ami-0a8b4cd432b1c3063"
  instance_type = "t2.micro"
  tags = {
    Name = "demoinstance-${count.index}"
  }
}
