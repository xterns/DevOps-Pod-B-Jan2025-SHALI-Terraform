# ---- Autoscaling for wordpress application

resource "aws_autoscaling_group" "wordpress-asg" {
  name                      = "wordpress-asg"
  max_size                  = var.max_size
  min_size                  = var.min_size
  health_check_grace_period = 300
  health_check_type         = "ELB"
  desired_capacity          = var.desired_capacity
  vpc_zone_identifier       = var.private_subnets


  launch_template {
    id      = aws_launch_template.wordpress-launch-template.id
    version = "$Latest"
  }
  tag {
    key                 = "Name"
<<<<<<< HEAD
    value               = "shali-wordpress"
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    value               = "shali-wordpress"
=======
    value               = "narbyd-wordpress"
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
    value               = "shali-wordpress"
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
    value               = "narbyd-wordpress"
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
    value               = "shali-wordpress"
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
    value               = "narbyd-wordpress"
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
    value               = "shali-wordpress"
>>>>>>> 1e0584b (first commit on this shali project updated)
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)
    propagate_at_launch = true
  }
}


# attaching autoscaling group of  wordpress application to internal loadbalancer
resource "aws_autoscaling_attachment" "asg_attachment_wordpress" {
  autoscaling_group_name = aws_autoscaling_group.wordpress-asg.id
  lb_target_group_arn   = var.wordpress-alb-tgt
}



# ---- Autoscaling for tooling -----

resource "aws_autoscaling_group" "tooling-asg" {
  name                      = "tooling-asg"
  max_size                  = var.max_size
  min_size                  = var.min_size
  health_check_grace_period = 300
  health_check_type         = "ELB"
  desired_capacity          = var.desired_capacity
  vpc_zone_identifier = var.private_subnets

  launch_template {
    id      = aws_launch_template.tooling-launch-template.id
    version = "$Latest"
  }

  tag {
    key                 = "Name"
<<<<<<< HEAD
    value               = "shali-tooling"
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    value               = "shali-tooling"
=======
    value               = "narbyd-tooling"
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
    value               = "shali-tooling"
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
    value               = "narbyd-tooling"
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
    value               = "shali-tooling"
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
    value               = "narbyd-tooling"
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
    value               = "shali-tooling"
>>>>>>> 1e0584b (first commit on this shali project updated)
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)
    propagate_at_launch = true
  }
}

# # # attaching autoscaling group of  tooling application to internal loadbalancer
resource "aws_autoscaling_attachment" "asg_attachment_tooling" {
  autoscaling_group_name = aws_autoscaling_group.tooling-asg.id
  lb_target_group_arn   = var.tooling-alb-tgt
}