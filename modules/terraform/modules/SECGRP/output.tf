output "ext-alb-sg" {
<<<<<<< HEAD
  value = aws_security_group.shali
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  value = aws_security_group.shali
=======
  value = aws_security_group.narbyd["ext-alb-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  value = aws_security_group.shali
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  value = aws_security_group.narbyd["ext-alb-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  value = aws_security_group.shali
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  value = aws_security_group.narbyd["ext-alb-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  value = aws_security_group.shali
>>>>>>> 1e0584b (first commit on this shali project updated)
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)
}


output "int-alb-sg" {
<<<<<<< HEAD
  value = aws_security_group.shali["int-alb-sg"].id
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  value = aws_security_group.shali["int-alb-sg"].id
=======
  value = aws_security_group.narbyd["int-alb-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  value = aws_security_group.shali["int-alb-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  value = aws_security_group.narbyd["int-alb-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  value = aws_security_group.shali["int-alb-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  value = aws_security_group.narbyd["int-alb-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  value = aws_security_group.shali["int-alb-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)
}


output "bastion-sg" {
<<<<<<< HEAD
  value = aws_security_group.shali["bastion-sg"].id
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  value = aws_security_group.shali["bastion-sg"].id
=======
  value = aws_security_group.narbyd["bastion-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  value = aws_security_group.shali["bastion-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  value = aws_security_group.narbyd["bastion-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  value = aws_security_group.shali["bastion-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  value = aws_security_group.narbyd["bastion-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  value = aws_security_group.shali["bastion-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)
}


output "nginx-sg" {
<<<<<<< HEAD
  value = aws_security_group.shali["nginx-sg"].id
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  value = aws_security_group.shali["nginx-sg"].id
=======
  value = aws_security_group.narbyd["nginx-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  value = aws_security_group.shali["nginx-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  value = aws_security_group.narbyd["nginx-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  value = aws_security_group.shali["nginx-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  value = aws_security_group.narbyd["nginx-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  value = aws_security_group.shali["nginx-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)
}


output "web-sg" {
<<<<<<< HEAD
  value = aws_security_group.shali["webserver-sg"].id
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  value = aws_security_group.shali["webserver-sg"].id
=======
  value = aws_security_group.narbyd["webserver-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  value = aws_security_group.shali["webserver-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  value = aws_security_group.narbyd["webserver-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  value = aws_security_group.shali["webserver-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  value = aws_security_group.narbyd["webserver-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  value = aws_security_group.shali["webserver-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)
}


output "datalayer-sg" {
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)
  value = aws_security_group.shali["datalayer-sg"].id
}

output "compute-sg" {
  value = aws_security_group.shali["compute-sg"].id
<<<<<<< HEAD
=======
=======
=======
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
  value = aws_security_group.narbyd["datalayer-sg"].id
}

output "compute-sg" {
  value = aws_security_group.narbyd["compute-sg"].id
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  value = aws_security_group.shali["datalayer-sg"].id
}

output "compute-sg" {
  value = aws_security_group.shali["compute-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  value = aws_security_group.shali["datalayer-sg"].id
}

output "compute-sg" {
  value = aws_security_group.shali["compute-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  value = aws_security_group.shali["datalayer-sg"].id
}

output "compute-sg" {
  value = aws_security_group.shali["compute-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)
}