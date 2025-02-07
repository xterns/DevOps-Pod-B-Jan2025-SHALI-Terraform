resource "aws_vpc" "this" {
  cidr_block = var.cidr_block
  tags = {
    Name = "devops-${var.pod}-${var.monthYear}-${var.environment}-vpc"
    Environment = var.environment
  }
}
