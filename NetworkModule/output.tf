output "public_instance_ip" {
  value = ["${aws_instance.levelup_instance.public_ip}"]
}