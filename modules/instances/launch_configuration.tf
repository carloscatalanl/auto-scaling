resource "aws_launch_configuration" "lc_asg" {
  name                        = "ASG - LC"
  image_id                    = data.aws_ami.ubuntu.id
  instance_type               = var.instance_type
  security_groups             = [aws_security_group.public_sg.id]
  associate_public_ip_address = true
  key_name                    = aws_key_pair.key_access.key_name

  user_data = file("${path.module}/src/start.sh")

  lifecycle {
    create_before_destroy = true
  }
}
