<!-- BEGIN_TF_DOCS -->
## Description
    This module creates SSH private and public keys. And uploads private SSH key 
    to AWS Secrets Manager and public ssh key as AWS EC2 Key Pair.

    SSH private and public keys created on the local filesystem are deleted by default. Pass 'destroy_local_ssh_files' to 'true' in 'sshkey_config' to override default behavior.

    SSH private and public keys are created at "~/terraform_aws_ssh_keys/.keys"
    folder. Pass 'local_sshkeys_folder' in 'sshkey_config' to override the default behavior.

    Example :- 

    variable "sshkey_config" {
        default = {
            algorithm               = "rsa"
            bits                    = 2048
            destroy_local_ssh_files = true
            local_sshkeys_folder    = "~/terraform_aws_ssh_keys/.keys"
        }
    }
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.4.0 |
| <a name="provider_local"></a> [local](#provider\_local) | 2.1.0 |
| <a name="provider_null"></a> [null](#provider\_null) | 3.1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_key_pair.sshkey](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |
| [aws_secretsmanager_secret.sshkey_secret](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret_version.sshkey_value](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |
| [local_file.sshkey](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [local_file.sshkey_public](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [null_resource.ssh-keygen](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.ssh-keygen-delete](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [local_file.sshkey_private](https://registry.terraform.io/providers/hashicorp/local/latest/docs/data-sources/file) | data source |
| [local_file.sshkey_public](https://registry.terraform.io/providers/hashicorp/local/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_secretsmanager_config"></a> [secretsmanager\_config](#input\_secretsmanager\_config) | Secrets Manager configuration details. | <pre>object({<br>    # recovery_window_in_days = number<br>  })</pre> | n/a | yes |
| <a name="input_sshkey_config"></a> [sshkey\_config](#input\_sshkey\_config) | SSH Key configuration details. | <pre>object({<br>    algorithm = string<br>    bits      = number<br>  })</pre> | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_secret_manager_secret_name"></a> [secret\_manager\_secret\_name](#output\_secret\_manager\_secret\_name) | n/a |
| <a name="output_sshkey_pair_name"></a> [sshkey\_pair\_name](#output\_sshkey\_pair\_name) | n/a |
<!-- END_TF_DOCS -->