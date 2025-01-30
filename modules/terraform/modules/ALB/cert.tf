# Create the certificate using a wildcard for all the domains created in mydevopsproject.top
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
resource "aws_acm_certificate" "shali-acm" {
=======
resource "aws_acm_certificate" "narbyd-acm" {
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
resource "aws_acm_certificate" "shali-acm" {
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
resource "aws_acm_certificate" "narbyd-acm" {
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
resource "aws_acm_certificate" "shali-acm" {
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
resource "aws_acm_certificate" "narbyd-acm" {
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
resource "aws_acm_certificate" "shali-acm" {
>>>>>>> 1e0584b (first commit on this shali project updated)
  domain_name       = "*.mydevopsproject.top"
  validation_method = "DNS"
}

# calling the hosted zone
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
data "aws_route53_zone" "shali-route53" {
=======
data "aws_route53_zone" "narbyd-route53" {
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
data "aws_route53_zone" "shali-route53" {
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
data "aws_route53_zone" "narbyd-route53" {
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
data "aws_route53_zone" "shali-route53" {
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
data "aws_route53_zone" "narbyd-route53" {
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
data "aws_route53_zone" "shali-route53" {
>>>>>>> 1e0584b (first commit on this shali project updated)
  name         = "mydevopsproject.top"
  private_zone = false
}

# selecting validation method
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
resource "aws_route53_record" "shali-record" {
  for_each = {
    for dvo in aws_acm_certificate.shali-acm.domain_validation_options : dvo.domain_name => {
=======
resource "aws_route53_record" "narbyd-record" {
  for_each = {
    for dvo in aws_acm_certificate.narbyd-acm.domain_validation_options : dvo.domain_name => {
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
resource "aws_route53_record" "shali-record" {
  for_each = {
    for dvo in aws_acm_certificate.shali-acm.domain_validation_options : dvo.domain_name => {
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
resource "aws_route53_record" "narbyd-record" {
  for_each = {
    for dvo in aws_acm_certificate.narbyd-acm.domain_validation_options : dvo.domain_name => {
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
resource "aws_route53_record" "shali-record" {
  for_each = {
    for dvo in aws_acm_certificate.shali-acm.domain_validation_options : dvo.domain_name => {
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
resource "aws_route53_record" "narbyd-record" {
  for_each = {
    for dvo in aws_acm_certificate.narbyd-acm.domain_validation_options : dvo.domain_name => {
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
resource "aws_route53_record" "shali-record" {
  for_each = {
    for dvo in aws_acm_certificate.shali-acm.domain_validation_options : dvo.domain_name => {
>>>>>>> 1e0584b (first commit on this shali project updated)
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }

  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 60
  type            = each.value.type
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  zone_id         = data.aws_route53_zone.shali-route53.zone_id
}

# validate the certificate through DNS method
resource "aws_acm_certificate_validation" "shali-acm-v" {
  certificate_arn         = aws_acm_certificate.shali-acm.arn
  validation_record_fqdns = [for record in aws_route53_record.shali-record : record.fqdn]
=======
=======
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
  zone_id         = data.aws_route53_zone.narbyd-route53.zone_id
}

# validate the certificate through DNS method
resource "aws_acm_certificate_validation" "narbyd-acm-v" {
  certificate_arn         = aws_acm_certificate.narbyd-acm.arn
  validation_record_fqdns = [for record in aws_route53_record.narbyd-record : record.fqdn]
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  zone_id         = data.aws_route53_zone.shali-route53.zone_id
}

# validate the certificate through DNS method
resource "aws_acm_certificate_validation" "shali-acm-v" {
  certificate_arn         = aws_acm_certificate.shali-acm.arn
  validation_record_fqdns = [for record in aws_route53_record.shali-record : record.fqdn]
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  zone_id         = data.aws_route53_zone.shali-route53.zone_id
}

# validate the certificate through DNS method
resource "aws_acm_certificate_validation" "shali-acm-v" {
  certificate_arn         = aws_acm_certificate.shali-acm.arn
  validation_record_fqdns = [for record in aws_route53_record.shali-record : record.fqdn]
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  zone_id         = data.aws_route53_zone.shali-route53.zone_id
}

# validate the certificate through DNS method
resource "aws_acm_certificate_validation" "shali-acm-v" {
  certificate_arn         = aws_acm_certificate.shali-acm.arn
  validation_record_fqdns = [for record in aws_route53_record.shali-record : record.fqdn]
>>>>>>> 1e0584b (first commit on this shali project updated)
}

# create records for tooling
resource "aws_route53_record" "tooling" {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  zone_id = data.aws_route53_zone.shali-route53.zone_id
=======
  zone_id = data.aws_route53_zone.narbyd-route53.zone_id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  zone_id = data.aws_route53_zone.shali-route53.zone_id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  zone_id = data.aws_route53_zone.narbyd-route53.zone_id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  zone_id = data.aws_route53_zone.shali-route53.zone_id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  zone_id = data.aws_route53_zone.narbyd-route53.zone_id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  zone_id = data.aws_route53_zone.shali-route53.zone_id
>>>>>>> 1e0584b (first commit on this shali project updated)
  name    = "tooling.mydevopsproject.top"
  type    = "A"

  alias {
    name                   = aws_lb.ext-alb.dns_name
    zone_id                = aws_lb.ext-alb.zone_id
    evaluate_target_health = true
  }
}

# create records for wordpress
resource "aws_route53_record" "wordpress" {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  zone_id = data.aws_route53_zone.shali-route53.zone_id
=======
  zone_id = data.aws_route53_zone.narbyd-route53.zone_id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  zone_id = data.aws_route53_zone.shali-route53.zone_id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  zone_id = data.aws_route53_zone.narbyd-route53.zone_id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  zone_id = data.aws_route53_zone.shali-route53.zone_id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  zone_id = data.aws_route53_zone.narbyd-route53.zone_id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  zone_id = data.aws_route53_zone.shali-route53.zone_id
>>>>>>> 1e0584b (first commit on this shali project updated)
  name    = "wordpress.mydevopsproject.top"
  type    = "A"

  alias {
    name                   = aws_lb.ext-alb.dns_name
    zone_id                = aws_lb.ext-alb.zone_id
    evaluate_target_health = true
  }
}