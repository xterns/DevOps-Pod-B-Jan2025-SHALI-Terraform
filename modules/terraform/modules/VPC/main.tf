# Create VPC
<<<<<<< HEAD
resource "aws_vpc" "shali-vpc" {
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
resource "aws_vpc" "shali-vpc" {
=======
resource "aws_vpc" "narbyd-vpc" {
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
resource "aws_vpc" "shali-vpc" {
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
resource "aws_vpc" "narbyd-vpc" {
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
resource "aws_vpc" "shali-vpc" {
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
resource "aws_vpc" "narbyd-vpc" {
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
resource "aws_vpc" "shali-vpc" {
>>>>>>> 1e0584b (first commit on this shali project updated)
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)
  cidr_block                     = var.vpc_cidr
  enable_dns_support             = var.enable_dns_support
  enable_dns_hostnames           = var.enable_dns_hostnames
  # enable_classiclink             = var.enable_classiclink
  # enable_classiclink_dns_support = var.enable_classiclink_dns_support


  tags = merge(
    var.tags,
    {
      Name = format("%s-VPC", var.name)
    },
  )
}

# Get list of availability zones
data "aws_availability_zones" "available" {
  state = "available"
}

# Create public subnets
resource "aws_subnet" "public" {
  count                   = var.preferred_number_of_public_subnets == null ? length(data.aws_availability_zones.available.names) : var.preferred_number_of_public_subnets
<<<<<<< HEAD
  vpc_id                  = aws_vpc.shali-vpc.id
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  vpc_id                  = aws_vpc.shali-vpc.id
=======
  vpc_id                  = aws_vpc.narbyd-vpc.id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  vpc_id                  = aws_vpc.shali-vpc.id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  vpc_id                  = aws_vpc.narbyd-vpc.id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  vpc_id                  = aws_vpc.shali-vpc.id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  vpc_id                  = aws_vpc.narbyd-vpc.id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  vpc_id                  = aws_vpc.shali-vpc.id
>>>>>>> 1e0584b (first commit on this shali project updated)
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)
  cidr_block              = var.public_subnets[count.index]
  map_public_ip_on_launch = true
  availability_zone       = data.aws_availability_zones.available.names[count.index]



  tags = merge(
    var.tags,
    {
      Name = format("%s-pub-sub-%s", var.name, count.index)
    },
  )

}

# Create private subnets
resource "aws_subnet" "private" {
  count                   = var.preferred_number_of_private_subnets == null ? length(data.aws_availability_zones.available.names) : var.preferred_number_of_private_subnets
<<<<<<< HEAD
  vpc_id                  = aws_vpc.shali-vpc.id
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  vpc_id                  = aws_vpc.shali-vpc.id
=======
  vpc_id                  = aws_vpc.narbyd-vpc.id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  vpc_id                  = aws_vpc.shali-vpc.id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  vpc_id                  = aws_vpc.narbyd-vpc.id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  vpc_id                  = aws_vpc.shali-vpc.id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  vpc_id                  = aws_vpc.narbyd-vpc.id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  vpc_id                  = aws_vpc.shali-vpc.id
>>>>>>> 1e0584b (first commit on this shali project updated)
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)
  cidr_block              = var.private_subnets[count.index]
  map_public_ip_on_launch = true
  availability_zone       = data.aws_availability_zones.available.names[count.index]

  tags = merge(
    var.tags,
    {
      Name = format("%s-priv-sub-%s", var.name, count.index)
    },
  )

}
