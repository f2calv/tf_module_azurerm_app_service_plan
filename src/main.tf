resource "azurerm_app_service_plan" "serviceplan" {
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name

  sku {
    tier = "Free"
    size = "F1"
  }

  #   tags = {
  #     source      = "terraform"
  #     environment = "test"
  #   }
}

resource "azurerm_app_service" "appservice" {
  name                = var.app_service_name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = azurerm_app_service_plan.serviceplan.id
}