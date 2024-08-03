## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules
No modules.

## Useage 
``` 
module "acr" {
  source              = "github.com/things4Ops/tfazure//modules/acr"
  acr_name            = lower("${var.env_name}") # use only lower case
  resource_location   = var.resource_location
  resource_group_name = var.resource_group_name
  product_name        = var.product_name
}
```

## Resources

| Name | Type |
|------|------|
| [azurerm_container_registry.acr](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acr_admin_enabled_status"></a> [acr\_admin\_enabled\_status](#input\_acr\_admin\_enabled\_status) | acr\_admin\_enabled\_status | `string` | `"true"` | no |
| <a name="input_acr_name"></a> [acr\_name](#input\_acr\_name) | acr\_name | `string` | `"test"` | no |
| <a name="input_acr_sku"></a> [acr\_sku](#input\_acr\_sku) | acr\_sku | `string` | `"Basic"` | no |
| <a name="input_env_name"></a> [env\_name](#input\_env\_name) | Name of Env | `string` | `"test"` | no |
| <a name="input_product_name"></a> [product\_name](#input\_product\_name) | Name of Product | `string` | `"test"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | resource\_group\_name | `string` | `"PROD"` | no |
| <a name="input_resource_location"></a> [resource\_location](#input\_resource\_location) | resource\_location | `string` | `"eastus2"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_acr_name"></a> [acr\_name](#output\_acr\_name) | n/a |
| <a name="output_admin_password"></a> [admin\_password](#output\_admin\_password) | n/a |
| <a name="output_admin_username"></a> [admin\_username](#output\_admin\_username) | n/a |
| <a name="output_login_server"></a> [login\_server](#output\_login\_server) | n/a |
