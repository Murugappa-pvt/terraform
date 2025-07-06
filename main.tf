ource "aws_instance" "example" {
  count             = var.instance_count
  ami               = var.ami
  instance_type     = var.instance_type
  availability_zone = element(var.az_list, count.index) # Selects an AZ based on the count index

  tags = {
    Name = "ExampleInstance-${count.index}"
  }
}

