resource "aws_eip" "nat_eip" {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD:modules/terraform/modules/VPC/nat_gateway.tf
<<<<<<< HEAD
=======
>>>>>>> 9448847 (Implement Packer to call Shell Scripts for CSI hardening):modules/terraform/modules/VPC/natgateway.tf
   domain = "vpc"
  depends_on = [aws_internet_gateway.narbyd-ig]
=======
  depends_on = [aws_internet_gateway.shali-ig]
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  depends_on = [aws_internet_gateway.shali-ig]
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  depends_on = [aws_internet_gateway.shali-ig]
>>>>>>> 1e0584b (first commit on this shali project updated)

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

