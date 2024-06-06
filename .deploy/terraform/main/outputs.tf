output "main_zone_id" {
  value = aws_route53_zone.main.zone_id
}

output "app_lb_dns_name" {
  value = aws_lb.app_lb.dns_name
}

output "app_lb_zone_id" {
  value = aws_lb.app_lb.zone_id
}

output "main_certificate" {
  value     = aws_acm_certificate.cert.arn
  sensitive = true
}

output "app_lb_arn" {
  value = aws_lb.app_lb.arn
}

output "rds_subnet_a_id" {
  value = aws_subnet.rds_subnet_a.id
}

output "rds_subnet_b_id" {
  value = aws_subnet.rds_subnet_b.id
}

output "lb_logs_bucket" {
  value = aws_s3_bucket.lb_logs.bucket

}
output "lb_logs_bucket_arn" {
  value = aws_s3_bucket.lb_logs.arn
}

output "lb_logs_bucket_id" {
  value = aws_s3_bucket.lb_logs.id
}

output "main_vpc_id" {
  value = aws_vpc.main.id
}

output "ecs_subnet_id" {
  value = aws_subnet.ecs_subnet.id
}

output "wowapp_tg_arn" {
  value = aws_lb_target_group.wowapp_tg.arn
}

output "blindtest_client_tg_arn" {
  value = aws_lb_target_group.blindtest_client_tg.arn
}

output "blindtest_backend_tg_arn" {
  value = aws_lb_target_group.blindtest_backend_tg.arn
}

output "https_listener_arn" {
  value = aws_lb_listener.https_listener.arn
}

output "app_sg_id" {
  value = aws_security_group.app_sg.id
}

output "lb_logs_name" {
  value = aws_cloudwatch_log_group.lb_logs.name
}

output "ecs_sg_id" {
  value = aws_security_group.ecs_sg.id
}

output "rds_sg_id" {
  value = aws_security_group.rds_sg.id
}

output "kms_key_db_id" {
  value = aws_kms_key.kms-key-db.id
}
