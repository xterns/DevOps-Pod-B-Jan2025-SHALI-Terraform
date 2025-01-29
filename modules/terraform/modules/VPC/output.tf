<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "List of IDs for public subnets"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "List of IDs for private subnets"
  value       = aws_subnet.private[*].id
}

output "route_table_id" {
  description = "The ID of the public route table"
  value       = aws_route_table.public.id
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = aws_internet_gateway.main.id
}
=======
=======
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
output "public_subnets-1" {
  value       = aws_subnet.public[0].id
  description = "public subnet 1"
}

output "public_subnets-2" {
  value       = aws_subnet.public[1].id
  description = "public subnet 2"
}


output "private_subnets-1" {
  value       = aws_subnet.private[0].id
  description = "private subnet 1"
}

output "private_subnets-2" {
  value       = aws_subnet.private[1].id
  description = "private subnet 2"
}


output "private_subnets-3" {
  value       = aws_subnet.private[2].id
  description = "private subnet 3"
}


output "private_subnets-4" {
  value       = aws_subnet.private[3].id
  description = "private subnet 4"
}


<<<<<<< HEAD
=======
>>>>>>> 1e0584b (first commit on this shali project updated)
output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "List of IDs for public subnets"
  value       = aws_subnet.public[*].id
}

<<<<<<< HEAD
output "instance_profile" {
  value = aws_iam_instance_profile.ip.id
}
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
output "private_subnet_ids" {
  description = "List of IDs for private subnets"
  value       = aws_subnet.private[*].id
}

output "route_table_id" {
  description = "The ID of the public route table"
  value       = aws_route_table.public.id
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = aws_internet_gateway.main.id
}
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
=======
>>>>>>> 1e0584b (first commit on this shali project updated)
output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "List of IDs for public subnets"
  value       = aws_subnet.public[*].id
}

<<<<<<< HEAD
output "instance_profile" {
  value = aws_iam_instance_profile.ip.id
}
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
output "private_subnet_ids" {
  description = "List of IDs for private subnets"
  value       = aws_subnet.private[*].id
}

output "route_table_id" {
  description = "The ID of the public route table"
  value       = aws_route_table.public.id
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = aws_internet_gateway.main.id
}
>>>>>>> 1e0584b (first commit on this shali project updated)
