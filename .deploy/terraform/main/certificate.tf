resource "aws_acm_certificate" "cert" {
  domain_name               = data.sops_file.secrets.data["domainName"]
  subject_alternative_names = ["*.${data.sops_file.secrets.data["domainName"]}"]

  validation_method = "DNS"

  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name = "${data.sops_file.secrets.data["domainName"]} SSL Certificate"
  }
}
