variable "tags" {
  default = {
    name              = "ssh_keys_poc"
    terraform_version = "1.1.7"
    description       = "SSH Keys POC"
  }
}

variable "sshkey_config" {
  default = {
    algorithm = "rsa"
    bits      = 2048
    /* By default SSH files are created at '~/terraform_aws_ssh_keys/.keys'.
    Uncomment below line and pass different folder if you want to change the default
    location.
    */
    # local_sshkeys_folder = "~/terraform_aws_ssh_keys/.keys" # Optional
  }
}

variable "secretsmanager_config" {
  default = {
    # This variable needs to be set to '0' if you plan to create and destroy
    # resources multiple times. If you plan to have value other than '0'
    # please manually destroy SSM secret manager using CLI else when you try
    # to rebuild the environment, you will get "Secret Manager Exists" error.
    # AWS CLI command :- 
    # aws secretsmanager delete-secret --secret-id <key_name> --force-delete-without-recovery
    recovery_window_in_days = 0
  }
}
