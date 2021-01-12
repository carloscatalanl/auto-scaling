## Load Balancer
resource "aws_lb" "asg_lb" {
  name               = "asg-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.public_sg.id]
  subnets            = var.public_subnets.*.id

}

## Target Group
resource "aws_lb_target_group" "asg_tg" {
  name     = "asg-lb-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_main_id
}

## Listener
resource "aws_lb_listener" "asg_listener" {
  load_balancer_arn = aws_lb.asg_lb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.asg_tg.arn
  }
}