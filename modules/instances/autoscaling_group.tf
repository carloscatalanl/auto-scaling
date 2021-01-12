resource "aws_autoscaling_group" "asg_public" {
  name                 = "ASG - PUB"
  launch_configuration = aws_launch_configuration.lc_asg.id
  min_size             = var.min_size
  desired_capacity     = var.desired_capacity
  max_size             = var.max_size
  vpc_zone_identifier  = var.public_subnets.*.id
  target_group_arns    = [aws_lb_target_group.asg_tg.arn]

  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "ASG - EC2"
  }

  lifecycle {
    create_before_destroy = true
  }
}