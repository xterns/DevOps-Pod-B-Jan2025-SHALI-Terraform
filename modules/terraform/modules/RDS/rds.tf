# This section will create the subnet group for the RDS  instance using the private subnet
# create DB subnet group from the private subnets
<<<<<<< HEAD
resource "aws_db_subnet_group" "shali-rds" {
  name       = "shali-rds"
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
resource "aws_db_subnet_group" "shali-rds" {
  name       = "shali-rds"
=======
resource "aws_db_subnet_group" "narbyd-rds" {
  name       = "narbyd-rds"
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
resource "aws_db_subnet_group" "shali-rds" {
  name       = "shali-rds"
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
resource "aws_db_subnet_group" "narbyd-rds" {
  name       = "narbyd-rds"
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
resource "aws_db_subnet_group" "shali-rds" {
  name       = "shali-rds"
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
resource "aws_db_subnet_group" "narbyd-rds" {
  name       = "narbyd-rds"
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
resource "aws_db_subnet_group" "shali-rds" {
  name       = "shali-rds"
>>>>>>> 1e0584b (first commit on this shali project updated)
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)
  subnet_ids = var.private_subnets

  tags = merge(
    var.tags,
    {
<<<<<<< HEAD
      Name = "shali-database"
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      Name = "shali-database"
=======
      Name = "narbyd-database"
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
      Name = "shali-database"
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
      Name = "narbyd-database"
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
      Name = "shali-database"
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
      Name = "narbyd-database"
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
      Name = "shali-database"
>>>>>>> 1e0584b (first commit on this shali project updated)
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)
    },
  )
}

# create the RDS instance with the subnets group
<<<<<<< HEAD
resource "aws_db_instance" "shali-rds" {
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
resource "aws_db_instance" "shali-rds" {
=======
resource "aws_db_instance" "narbyd-rds" {
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
resource "aws_db_instance" "shali-rds" {
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
resource "aws_db_instance" "narbyd-rds" {
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
resource "aws_db_instance" "shali-rds" {
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
resource "aws_db_instance" "narbyd-rds" {
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
resource "aws_db_instance" "shali-rds" {
>>>>>>> 1e0584b (first commit on this shali project updated)
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)
  allocated_storage      = 20
  storage_type           = "gp2"
  engine                 = "mysql"
  engine_version         = "5.7"
  instance_class         = "db.t2.micro"
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)
  # name                   = "shalidb"
  username               = var.db-username
  password               = var.db-password
  parameter_group_name   = "default.mysql5.7"
  db_subnet_group_name   = aws_db_subnet_group.shali-rds.name
<<<<<<< HEAD
=======
=======
=======
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
  # name                   = "narbyddb"
  username               = var.db-username
  password               = var.db-password
  parameter_group_name   = "default.mysql5.7"
  db_subnet_group_name   = aws_db_subnet_group.narbyd-rds.name
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  # name                   = "shalidb"
  username               = var.db-username
  password               = var.db-password
  parameter_group_name   = "default.mysql5.7"
  db_subnet_group_name   = aws_db_subnet_group.shali-rds.name
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  # name                   = "shalidb"
  username               = var.db-username
  password               = var.db-password
  parameter_group_name   = "default.mysql5.7"
  db_subnet_group_name   = aws_db_subnet_group.shali-rds.name
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  # name                   = "shalidb"
  username               = var.db-username
  password               = var.db-password
  parameter_group_name   = "default.mysql5.7"
  db_subnet_group_name   = aws_db_subnet_group.shali-rds.name
>>>>>>> 1e0584b (first commit on this shali project updated)
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)
  skip_final_snapshot    = true
  vpc_security_group_ids = var.db-sg
  multi_az               = "true"
}
