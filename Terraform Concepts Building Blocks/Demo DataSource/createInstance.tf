
data "aws_availability_zones" "avilable" {}


resource "aws_instance" "MyFirstInstnace" {
  ami           = lookup(var.AMIS, var.AWS_REGION)
  instance_type = "t2.micro"
  availability_zone = data.aws_availability_zones.avilable.names[1]

  tags = {
    Name = "custom_instance"
  }

}