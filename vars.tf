/*
  This module creates AWS EC2 SSH Keys and upload public key to AWS EC2 keypair.
*/
variable "tags" {
  description = "Tags"
  type        = map(string)
}

variable "sshkey_config" {
  description = "SSH Key configuration details."
  type = object({
    algorithm = string
    bits      = number
  })
}

variable "secretsmanager_config" {
  description = "Secrets Manager configuration details."
  type = object({
    recovery_window_in_days = number
  })
}


locals {
  # sshkey_folder = pathexpand("~/terraform_aws_ssh_keys/.keys")
  sshkey_file = "${local.sshkey_folder}/${var.tags.name}"
  default_sshkey_config = {
    algorithm = "rsa"
    bits      = 2048
    # destroy_local_ssh_files = true
    local_sshkeys_folder = "~/terraform_aws_ssh_keys/.keys"
  }
  sshkey_config = merge(
    local.default_sshkey_config,
    var.sshkey_config
  )

  default_secretsmanager_config = {
    recovery_window_in_days = 0
  }
  secretsmanager_config = merge(
    local.default_secretsmanager_config,
    var.secretsmanager_config
  )
  sshkey_folder = pathexpand(local.sshkey_config.local_sshkeys_folder)
}

