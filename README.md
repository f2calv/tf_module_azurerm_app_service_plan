# Terraform Module for Azure App Service

Provisions an [Azure Service Plan](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/service_plan) with either a [Linux Web App](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app) or [Windows Web App](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_web_app).

## Usage

```hcl
module "app" {
  source              = "git::https://github.com/f2calv/tf_module_azurerm_app_service_plan.git//src?ref=v0.2.0"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  service_plan_name   = "my-service-plan"
  app_service_name    = "my-web-app"
  os_type             = "Linux"
  sku_name            = "F1"
  tags                = { environment = "dev" }
}
```

## Variables

| Name | Type | Default | Description |
| --- | --- | --- | --- |
| `resource_group_name` | `string` | Required | Name of the parent resource group |
| `location` | `string` | `West Europe` | Location of the parent resource group |
| `service_plan_name` | `string` | Required | Name of the service plan |
| `app_service_name` | `string` | Required | Name of the web app |
| `os_type` | `string` | `Linux` | OS type for the service plan (Linux or Windows) |
| `sku_name` | `string` | `F1` | SKU name for the service plan (e.g. F1, B1, S1, P1v3) |
| `tags` | `map(string)` | `{}` | Any tags that should be present on the resources |

## Outputs

| Name | Description |
| --- | --- |
| `service_plan_id` | The ID of the service plan |
| `service_plan_name` | The name of the service plan |
| `app_service_id` | The ID of the web app |
| `app_service_name` | The name of the web app |
| `default_hostname` | The default hostname of the web app |
