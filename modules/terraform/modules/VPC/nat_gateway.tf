resource "aws_eip" "nat_eip" {
<<<<<<< HEAD:modules/terraform/modules/VPC/natgateway.tf
   domain = "vpc"
  depends_on = [aws_internet_gateway.narbyd-ig]
=======
  depends_on = [aws_internet_gateway.shali-ig]
>>>>>>> fecd32694eae0c79155d0df99788dbbdfa046bd3:modules/terraform/modules/VPC/nat_gateway.tf

  tags = merge(
    var.tags,
    {
      Name = format("%s-EIP-%s", var.name, var.environment)
    },
  )
}


resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = element(aws_subnet.public.*.id, 0)
  depends_on    = [aws_internet_gateway.shali-ig]

  tags = merge(
    var.tags,
    {
      Name = format("%s-Nat-%s", var.name, var.environment)
    },
  )
}

resource "aws_internet_gateway" "shali-ig" {
  vpc_id = aws_vpc.shali-vpc.id

  tags = merge(
    var.tags,
    {
      Name = format("%s-%s", var.name, "IG")
    }
  )
}

