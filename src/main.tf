# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/service_plan
resource "azurerm_service_plan" "this" {
  name                = var.service_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name
  os_type             = var.os_type
  sku_name            = var.sku_name
  tags                = var.tags
}

# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app
resource "azurerm_linux_web_app" "this_linux" {
  count               = var.os_type == "Linux" ? 1 : 0
  name                = var.app_service_name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = azurerm_service_plan.this.id
  tags                = var.tags

  site_config {}
}

# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_web_app
resource "azurerm_windows_web_app" "this_windows" {
  count               = var.os_type == "Windows" ? 1 : 0
  name                = var.app_service_name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = azurerm_service_plan.this.id
  tags                = var.tags

  site_config {}
}
