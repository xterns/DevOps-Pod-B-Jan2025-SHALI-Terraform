# security group for alb, to allow acess from any where on port 80 for http traffic
resource "aws_security_group_rule" "inbound-alb-http" {
  from_port         = 80
  protocol          = "tcp"
  to_port           = 80
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  security_group_id = aws_security_group.shali["ext-alb-sg"].id
=======
  security_group_id = aws_security_group.narbyd["ext-alb-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  security_group_id = aws_security_group.shali["ext-alb-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  security_group_id = aws_security_group.narbyd["ext-alb-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  security_group_id = aws_security_group.shali["ext-alb-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
}

resource "aws_security_group_rule" "inbound-alb-https" {
  from_port         = 443
  protocol          = "tcp"
  to_port           = 443
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  security_group_id = aws_security_group.shali["ext-alb-sg"].id
=======
  security_group_id = aws_security_group.narbyd["ext-alb-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  security_group_id = aws_security_group.shali["ext-alb-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  security_group_id = aws_security_group.narbyd["ext-alb-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  security_group_id = aws_security_group.shali["ext-alb-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
}


# security group for compute module
resource "aws_security_group_rule" "inbound-bastion-ssh-compute" {
  from_port         = 22
  protocol          = "tcp"
  to_port           = 22
  type              = "ingress"
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  source_security_group_id = aws_security_group.shali["bastion-sg"].id
  security_group_id = aws_security_group.shali["compute-sg"].id
=======
  source_security_group_id = aws_security_group.narbyd["bastion-sg"].id
  security_group_id = aws_security_group.narbyd["compute-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  source_security_group_id = aws_security_group.shali["bastion-sg"].id
  security_group_id = aws_security_group.shali["compute-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  source_security_group_id = aws_security_group.narbyd["bastion-sg"].id
  security_group_id = aws_security_group.narbyd["compute-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  source_security_group_id = aws_security_group.shali["bastion-sg"].id
  security_group_id = aws_security_group.shali["compute-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
}

resource "aws_security_group_rule" "inbound-port-artifcatory" {
  from_port         = 8081
  protocol          = "tcp"
  to_port           = 8081
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  security_group_id = aws_security_group.shali["compute-sg"].id
=======
  security_group_id = aws_security_group.narbyd["compute-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  security_group_id = aws_security_group.shali["compute-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  security_group_id = aws_security_group.narbyd["compute-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  security_group_id = aws_security_group.shali["compute-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
}

resource "aws_security_group_rule" "inbound-port-jenkins" {
  from_port         = 8080
  protocol          = "tcp"
  to_port           = 8080
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  security_group_id = aws_security_group.shali["compute-sg"].id
=======
  security_group_id = aws_security_group.narbyd["compute-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  security_group_id = aws_security_group.shali["compute-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  security_group_id = aws_security_group.narbyd["compute-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  security_group_id = aws_security_group.shali["compute-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
}

resource "aws_security_group_rule" "inbound-port-sonarqube" {
  from_port         = 9000
  protocol          = "tcp"
  to_port           = 9000
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  security_group_id = aws_security_group.shali["ext-alb-sg"].id
=======
  security_group_id = aws_security_group.narbyd["ext-alb-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  security_group_id = aws_security_group.shali["ext-alb-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  security_group_id = aws_security_group.narbyd["ext-alb-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  security_group_id = aws_security_group.shali["ext-alb-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
}

# security group rule for bastion to allow arssh access fro your local machine
resource "aws_security_group_rule" "inbound-ssh-bastion" {
  from_port         = 22
  protocol          = "tcp"
  to_port           = 22
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  security_group_id = aws_security_group.shali["bastion-sg"].id
=======
  security_group_id = aws_security_group.narbyd["bastion-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  security_group_id = aws_security_group.shali["bastion-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  security_group_id = aws_security_group.narbyd["bastion-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  security_group_id = aws_security_group.shali["bastion-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
}


# security group for nginx reverse proxy, to allow access only from the extaernal load balancer and bastion instance

resource "aws_security_group_rule" "inbound-nginx-http" {
  type                     = "ingress"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  source_security_group_id = aws_security_group.shali["ext-alb-sg"].id
  security_group_id        = aws_security_group.shali["nginx-sg"].id
=======
  source_security_group_id = aws_security_group.narbyd["ext-alb-sg"].id
  security_group_id        = aws_security_group.narbyd["nginx-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  source_security_group_id = aws_security_group.shali["ext-alb-sg"].id
  security_group_id        = aws_security_group.shali["nginx-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  source_security_group_id = aws_security_group.narbyd["ext-alb-sg"].id
  security_group_id        = aws_security_group.narbyd["nginx-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  source_security_group_id = aws_security_group.shali["ext-alb-sg"].id
  security_group_id        = aws_security_group.shali["nginx-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
}


resource "aws_security_group_rule" "inbound-bastion-ssh" {
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  source_security_group_id = aws_security_group.shali["bastion-sg"].id
  security_group_id        = aws_security_group.shali["nginx-sg"].id
=======
  source_security_group_id = aws_security_group.narbyd["bastion-sg"].id
  security_group_id        = aws_security_group.narbyd["nginx-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  source_security_group_id = aws_security_group.shali["bastion-sg"].id
  security_group_id        = aws_security_group.shali["nginx-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  source_security_group_id = aws_security_group.narbyd["bastion-sg"].id
  security_group_id        = aws_security_group.narbyd["nginx-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  source_security_group_id = aws_security_group.shali["bastion-sg"].id
  security_group_id        = aws_security_group.shali["nginx-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
}



# security group for ialb, to have acces only from nginx reverser proxy server

resource "aws_security_group_rule" "inbound-ialb-https" {
  type                     = "ingress"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  source_security_group_id = aws_security_group.shali["nginx-sg"].id
  security_group_id        = aws_security_group.shali["int-alb-sg"].id
=======
  source_security_group_id = aws_security_group.narbyd["nginx-sg"].id
  security_group_id        = aws_security_group.narbyd["int-alb-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  source_security_group_id = aws_security_group.shali["nginx-sg"].id
  security_group_id        = aws_security_group.shali["int-alb-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  source_security_group_id = aws_security_group.narbyd["nginx-sg"].id
  security_group_id        = aws_security_group.narbyd["int-alb-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  source_security_group_id = aws_security_group.shali["nginx-sg"].id
  security_group_id        = aws_security_group.shali["int-alb-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
}



# security group for webservers, to have access only from the internal load balancer and bastion instance

resource "aws_security_group_rule" "inbound-web-https" {
  type                     = "ingress"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  source_security_group_id = aws_security_group.shali["int-alb-sg"].id
  security_group_id        = aws_security_group.shali["webserver-sg"].id
=======
  source_security_group_id = aws_security_group.narbyd["int-alb-sg"].id
  security_group_id        = aws_security_group.narbyd["webserver-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  source_security_group_id = aws_security_group.shali["int-alb-sg"].id
  security_group_id        = aws_security_group.shali["webserver-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  source_security_group_id = aws_security_group.narbyd["int-alb-sg"].id
  security_group_id        = aws_security_group.narbyd["webserver-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  source_security_group_id = aws_security_group.shali["int-alb-sg"].id
  security_group_id        = aws_security_group.shali["webserver-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
}

resource "aws_security_group_rule" "inbound-web-ssh" {
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  source_security_group_id = aws_security_group.shali["bastion-sg"].id
  security_group_id        = aws_security_group.shali["webserver-sg"].id
=======
  source_security_group_id = aws_security_group.narbyd["bastion-sg"].id
  security_group_id        = aws_security_group.narbyd["webserver-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  source_security_group_id = aws_security_group.shali["bastion-sg"].id
  security_group_id        = aws_security_group.shali["webserver-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  source_security_group_id = aws_security_group.narbyd["bastion-sg"].id
  security_group_id        = aws_security_group.narbyd["webserver-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  source_security_group_id = aws_security_group.shali["bastion-sg"].id
  security_group_id        = aws_security_group.shali["webserver-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
}



# security group for datalayer to alow traffic from websever on nfs and mysql port and bastiopn host on mysql port
resource "aws_security_group_rule" "inbound-nfs-port" {
  type                     = "ingress"
  from_port                = 2049
  to_port                  = 2049
  protocol                 = "tcp"
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  source_security_group_id = aws_security_group.shali["webserver-sg"].id
  security_group_id        = aws_security_group.shali["datalayer-sg"].id
=======
  source_security_group_id = aws_security_group.narbyd["webserver-sg"].id
  security_group_id        = aws_security_group.narbyd["datalayer-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  source_security_group_id = aws_security_group.shali["webserver-sg"].id
  security_group_id        = aws_security_group.shali["datalayer-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  source_security_group_id = aws_security_group.narbyd["webserver-sg"].id
  security_group_id        = aws_security_group.narbyd["datalayer-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  source_security_group_id = aws_security_group.shali["webserver-sg"].id
  security_group_id        = aws_security_group.shali["datalayer-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
}

resource "aws_security_group_rule" "inbound-mysql-bastion" {
  type                     = "ingress"
  from_port                = 3306
  to_port                  = 3306
  protocol                 = "tcp"
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  source_security_group_id = aws_security_group.shali["bastion-sg"].id
  security_group_id        = aws_security_group.shali["datalayer-sg"].id
=======
  source_security_group_id = aws_security_group.narbyd["bastion-sg"].id
  security_group_id        = aws_security_group.narbyd["datalayer-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  source_security_group_id = aws_security_group.shali["bastion-sg"].id
  security_group_id        = aws_security_group.shali["datalayer-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  source_security_group_id = aws_security_group.narbyd["bastion-sg"].id
  security_group_id        = aws_security_group.narbyd["datalayer-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  source_security_group_id = aws_security_group.shali["bastion-sg"].id
  security_group_id        = aws_security_group.shali["datalayer-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
}

resource "aws_security_group_rule" "inbound-mysql-webserver" {
  type                     = "ingress"
  from_port                = 3306
  to_port                  = 3306
  protocol                 = "tcp"
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  source_security_group_id = aws_security_group.shali["webserver-sg"].id
  security_group_id        = aws_security_group.shali["datalayer-sg"].id
=======
  source_security_group_id = aws_security_group.narbyd["webserver-sg"].id
  security_group_id        = aws_security_group.narbyd["datalayer-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  source_security_group_id = aws_security_group.shali["webserver-sg"].id
  security_group_id        = aws_security_group.shali["datalayer-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  source_security_group_id = aws_security_group.narbyd["webserver-sg"].id
  security_group_id        = aws_security_group.narbyd["datalayer-sg"].id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  source_security_group_id = aws_security_group.shali["webserver-sg"].id
  security_group_id        = aws_security_group.shali["datalayer-sg"].id
>>>>>>> 1e0584b (first commit on this shali project updated)
}



