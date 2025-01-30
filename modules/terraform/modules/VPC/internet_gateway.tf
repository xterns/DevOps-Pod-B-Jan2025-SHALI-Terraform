<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
resource "aws_internet_gateway" "shali-ig" {
  vpc_id = aws_vpc.shali-vpc.id
=======
resource "aws_internet_gateway" "narbyd-ig" {
  vpc_id = aws_vpc.narbyd-vpc.id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
resource "aws_internet_gateway" "shali-ig" {
  vpc_id = aws_vpc.shali-vpc.id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
resource "aws_internet_gateway" "narbyd-ig" {
  vpc_id = aws_vpc.narbyd-vpc.id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
resource "aws_internet_gateway" "shali-ig" {
  vpc_id = aws_vpc.shali-vpc.id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
resource "aws_internet_gateway" "narbyd-ig" {
  vpc_id = aws_vpc.narbyd-vpc.id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
resource "aws_internet_gateway" "shali-ig" {
  vpc_id = aws_vpc.shali-vpc.id
>>>>>>> 1e0584b (first commit on this shali project updated)

  tags = merge(
    var.tags,
    {
      Name = format("%s-%s", var.name, "IG")
    }
  )
}

