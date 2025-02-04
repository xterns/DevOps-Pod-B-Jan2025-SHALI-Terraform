output "ext-alb-sg" {
  value = aws_security_group.shali
}


output "int-alb-sg" {
  value = aws_security_group.shali["int-alb-sg"].id
}


output "bastion-sg" {
  value = aws_security_group.shali["bastion-sg"].id
}


output "nginx-sg" {
  value = aws_security_group.shali["nginx-sg"].id
}


output "web-sg" {
  value = aws_security_group.shali["webserver-sg"].id
}


output "datalayer-sg" {
  value = aws_security_group.shali["datalayer-sg"].id
}

output "compute-sg" {
  value = aws_security_group.shali["compute-sg"].id
}