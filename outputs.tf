output "secret_manager_secret_name" {
  value = aws_secretsmanager_secret.sshkey_secret.name
}


output "sshkey_pair_name" {
  value = aws_key_pair.sshkey.key_name
}
