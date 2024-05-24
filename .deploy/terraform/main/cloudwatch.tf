resource "aws_cloudwatch_log_group" "lb_logs" {
  name              = "/lb/wow-app"
  retention_in_days = 30

  tags = {
    Project = "wow app"
  }
}
