# Get list of availability zones
data "aws_availability_zones" "available" {
  state = "available"
}


# creating sns topic for all the auto scaling groups
<<<<<<< HEAD
resource "aws_sns_topic" "shali-sns" {
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
resource "aws_sns_topic" "shali-sns" {
=======
resource "aws_sns_topic" "narbyd-sns" {
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
resource "aws_sns_topic" "shali-sns" {
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
resource "aws_sns_topic" "narbyd-sns" {
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
resource "aws_sns_topic" "shali-sns" {
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
resource "aws_sns_topic" "narbyd-sns" {
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
resource "aws_sns_topic" "shali-sns" {
>>>>>>> 1e0584b (first commit on this shali project updated)
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)
  name = "Default_CloudWatch_Alarms_Topic"
}


# creating notification for all the auto scaling groups
<<<<<<< HEAD
resource "aws_autoscaling_notification" "shali_notifications" {
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
resource "aws_autoscaling_notification" "shali_notifications" {
=======
resource "aws_autoscaling_notification" "narbyd_notifications" {
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
resource "aws_autoscaling_notification" "shali_notifications" {
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
resource "aws_autoscaling_notification" "narbyd_notifications" {
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
resource "aws_autoscaling_notification" "shali_notifications" {
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
resource "aws_autoscaling_notification" "narbyd_notifications" {
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
resource "aws_autoscaling_notification" "shali_notifications" {
>>>>>>> 1e0584b (first commit on this shali project updated)
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)
  group_names = [
    aws_autoscaling_group.bastion-asg.name,
    aws_autoscaling_group.nginx-asg.name,
    aws_autoscaling_group.wordpress-asg.name,
    aws_autoscaling_group.tooling-asg.name,
  ]
  notifications = [
    "autoscaling:EC2_INSTANCE_LAUNCH",
    "autoscaling:EC2_INSTANCE_TERMINATE",
    "autoscaling:EC2_INSTANCE_LAUNCH_ERROR",
    "autoscaling:EC2_INSTANCE_TERMINATE_ERROR",
  ]

<<<<<<< HEAD
  topic_arn = aws_sns_topic.shali-sns.arn
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  topic_arn = aws_sns_topic.shali-sns.arn
=======
  topic_arn = aws_sns_topic.narbyd-sns.arn
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  topic_arn = aws_sns_topic.shali-sns.arn
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  topic_arn = aws_sns_topic.narbyd-sns.arn
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  topic_arn = aws_sns_topic.shali-sns.arn
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  topic_arn = aws_sns_topic.narbyd-sns.arn
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  topic_arn = aws_sns_topic.shali-sns.arn
>>>>>>> 1e0584b (first commit on this shali project updated)
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)
}


resource "random_shuffle" "az_list" {
  input = data.aws_availability_zones.available.names
}


# ---- Autoscaling for bastion  hosts


resource "aws_autoscaling_group" "bastion-asg" {
  name                      = "bastion-asg"
  max_size                  = var.max_size
  min_size                  = var.min_size
  health_check_grace_period = 300
  health_check_type         = "ELB"
  desired_capacity          = var.desired_capacity

  vpc_zone_identifier = var.public_subnets
  



  launch_template {
    id      = aws_launch_template.bastion-launch-template.id
    version = "$Latest"
  }
  tag {
    key                 = "Name"
<<<<<<< HEAD
    value               = "shali-bastion"
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    value               = "shali-bastion"
=======
    value               = "narbyd-bastion"
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
    value               = "shali-bastion"
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
    value               = "narbyd-bastion"
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
    value               = "shali-bastion"
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
    value               = "narbyd-bastion"
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
    value               = "shali-bastion"
>>>>>>> 1e0584b (first commit on this shali project updated)
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)
    propagate_at_launch = true
  }

}



# ------ Autoscslaling group for reverse proxy nginx ---------

resource "aws_autoscaling_group" "nginx-asg" {
  name                      = "nginx-asg"
  max_size                  = 2
  min_size                  = 1
  health_check_grace_period = 300
  health_check_type         = "ELB"
  desired_capacity          = 1
  
  vpc_zone_identifier = var.public_subnets


  launch_template {
    id      = aws_launch_template.nginx-launch-template.id
    version = "$Latest"
  }

  tag {
    key                 = "Name"
<<<<<<< HEAD
    value               = "shali-nginx"
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    value               = "shali-nginx"
=======
    value               = "narbyd-nginx"
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
    value               = "shali-nginx"
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
    value               = "narbyd-nginx"
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
    value               = "shali-nginx"
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
    value               = "narbyd-nginx"
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
    value               = "shali-nginx"
>>>>>>> 1e0584b (first commit on this shali project updated)
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)
    propagate_at_launch = true
  }


}

 # attaching autoscaling group of nginx to external load balancer
resource "aws_autoscaling_attachment" "asg_attachment_nginx" {
  autoscaling_group_name = aws_autoscaling_group.nginx-asg.id
  lb_target_group_arn   = var.nginx-alb-tgt
}
