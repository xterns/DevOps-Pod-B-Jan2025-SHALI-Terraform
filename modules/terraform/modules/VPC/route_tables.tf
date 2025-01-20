# create private route table
resource "aws_route_table" "private-rtb" {
<<<<<<< HEAD
  vpc_id = aws_vpc.shali-vpc
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  vpc_id = aws_vpc.shali-vpc
=======
  vpc_id = aws_vpc.narbyd-vpc.id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  vpc_id = aws_vpc.shali-vpc
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  vpc_id = aws_vpc.narbyd-vpc.id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  vpc_id = aws_vpc.shali-vpc
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  vpc_id = aws_vpc.narbyd-vpc.id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  vpc_id = aws_vpc.shali-vpc
>>>>>>> 1e0584b (first commit on this shali project updated)
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)

  tags = merge(
    var.tags,
    {
       Name = format("%s-Private-Route-Table", var.name)
    },
  )
}

# create route for the private route table and attatch a nat gateway to it
resource "aws_route" "private-rtb-route" {
  route_table_id         = aws_route_table.private-rtb.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_nat_gateway.nat.id
}


# associate all private subnets to the private route table
resource "aws_route_table_association" "private-subnets-assoc" {
  count          = length(aws_subnet.private[*].id)
  subnet_id      = element(aws_subnet.private[*].id, count.index)
  route_table_id = aws_route_table.private-rtb.id
}



# create route table for the public subnets
resource "aws_route_table" "public-rtb" {
<<<<<<< HEAD
  vpc_id = aws_vpc.shali-vpc
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  vpc_id = aws_vpc.shali-vpc
=======
  vpc_id = aws_vpc.narbyd-vpc.id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  vpc_id = aws_vpc.shali-vpc
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  vpc_id = aws_vpc.narbyd-vpc.id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  vpc_id = aws_vpc.shali-vpc
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  vpc_id = aws_vpc.narbyd-vpc.id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  vpc_id = aws_vpc.shali-vpc
>>>>>>> 1e0584b (first commit on this shali project updated)
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)

  tags = merge(
    var.tags,
    {
      Name = format("%s-Public-Route-Table", var.name)
    },
  )
}

# create route for the public route table and attach the internet gateway
resource "aws_route" "public-rtb-route" {
  route_table_id         = aws_route_table.public-rtb.id
  destination_cidr_block = "0.0.0.0/0"
<<<<<<< HEAD
  gateway_id             = aws_internet_gateway.shaliaws_vpc.shali-vpc-ig.id
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  gateway_id             = aws_internet_gateway.shaliaws_vpc.shali-vpc-ig.id
=======
  gateway_id             = aws_internet_gateway.narbyd-ig.id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  gateway_id             = aws_internet_gateway.shaliaws_vpc.shali-vpc-ig.id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  gateway_id             = aws_internet_gateway.narbyd-ig.id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  gateway_id             = aws_internet_gateway.shaliaws_vpc.shali-vpc-ig.id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  gateway_id             = aws_internet_gateway.narbyd-ig.id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  gateway_id             = aws_internet_gateway.shaliaws_vpc.shali-vpc-ig.id
>>>>>>> 1e0584b (first commit on this shali project updated)
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)
}

# associate all public subnets to the public route table
resource "aws_route_table_association" "public-subnets-assoc" {
  count          = length(aws_subnet.public[*].id)
  subnet_id      = element(aws_subnet.public[*].id, count.index)
  route_table_id = aws_route_table.public-rtb.id
}
