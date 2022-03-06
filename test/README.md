<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.1.7 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | = 4.2.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_sshkey"></a> [sshkey](#module\_sshkey) | ../../terraform_modules_aws_sshkey | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_secretsmanager_config"></a> [secretsmanager\_config](#input\_secretsmanager\_config) | n/a | `map` | <pre>{<br>  "recovery_window_in_days": 0<br>}</pre> | yes |
| <a name="input_sshkey_config"></a> [sshkey\_config](#input\_sshkey\_config) | n/a | `map` | <pre>{<br>  "algorithm": "rsa",<br>  "bits": 2048,<br>  "destroy_local_ssh_files": true (Optional),<br>  "local_sshkeys_folder": "~/terraform_aws_ssh_keys/.keys"(Optional)<br>}</pre> | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map` | <pre>{<br>  "description": "SSH Keys POC",<br>  "name": "ssh_keys_poc",<br>  "terraform_version": "1.1.7"<br>}</pre> | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_secret_manager_secret_name"></a> [secret\_manager\_secret\_name](#output\_secret\_manager\_secret\_name) | n/a |
| <a name="output_sshkey_pair_name"></a> [sshkey\_pair\_name](#output\_sshkey\_pair\_name) | n/a |
<!-- END_TF_DOCS -->