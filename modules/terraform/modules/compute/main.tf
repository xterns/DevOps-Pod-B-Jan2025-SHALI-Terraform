# create instance for jenkins
resource "aws_instance" "Jenkins" {
  ami                         = var.ami-jenkins
  instance_type               = "t2.micro"
  subnet_id                   = var.subnets-compute
  vpc_security_group_ids      = var.sg-compute
  associate_public_ip_address = true
  key_name                    = var.keypair

 tags = merge(
    var.tags,
    {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      Name = "shali-Jenkins"
=======
      Name = "narbyd-Jenkins"
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
      Name = "shali-Jenkins"
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
      Name = "narbyd-Jenkins"
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
      Name = "shali-Jenkins"
>>>>>>> 1e0584b (first commit on this shali project updated)
    },
  )
}


#create instance for sonbarqube
resource "aws_instance" "sonbarqube" {
  ami                         = var.ami-sonar
  instance_type               = "t2.medium"
  subnet_id                   = var.subnets-compute
  vpc_security_group_ids      = var.sg-compute
  associate_public_ip_address = true
  key_name                    = var.keypair


   tags = merge(
    var.tags,
    {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      Name = "shali-sonarqube"
=======
      Name = "narbyd-sonarqube"
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
      Name = "shali-sonarqube"
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
      Name = "narbyd-sonarqube"
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
      Name = "shali-sonarqube"
>>>>>>> 1e0584b (first commit on this shali project updated)
    },
  )
}

# create instance for artifactory
resource "aws_instance" "artifactory" {
  ami                         = var.ami-jfrog
  instance_type               = "t2.medium"
  subnet_id                   = var.subnets-compute
  vpc_security_group_ids      = var.sg-compute
  associate_public_ip_address = true
  key_name                    = var.keypair


  tags = merge(
    var.tags,
    {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      Name = "shali-artifactory"
=======
      Name = "narbyd-artifactory"
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
      Name = "shali-artifactory"
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
      Name = "narbyd-artifactory"
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
      Name = "shali-artifactory"
>>>>>>> 1e0584b (first commit on this shali project updated)
    },
  )
}