resource "aws_internet_gateway" "shali-ig" {
  vpc_id = aws_vpc.shali-vpc.id

  tags = merge(
    var.tags,
    {
      Name = format("%s-%s", var.name, "IG")
    }
  )
}

