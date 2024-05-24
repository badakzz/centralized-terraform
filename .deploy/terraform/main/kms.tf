resource "aws_kms_key" "kms-key-db" {
  description             = "KMS key to encrypt master pw"
  deletion_window_in_days = 10
}

resource "aws_kms_alias" "kms-key-db-alias" {
  name          = "alias/kms-key-db"
  target_key_id = aws_kms_key.kms-key-db.id
}

