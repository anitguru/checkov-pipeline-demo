resource "aws_instance" "example" {
  ami           = "ami-0c94855ba95c71c99"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.example.id]

  subnet_id = aws_subnet.example.id

  tags = {
    Name = "example-server"
  }
}
