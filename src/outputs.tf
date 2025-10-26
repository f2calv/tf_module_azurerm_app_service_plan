output "id" {
  value = azurerm_app_service.appservice.id
}
output "name" {
  value = azurerm_app_service.appservice.name
}
output "location" {
  value = azurerm_app_service.appservice.location
}
#note: no service plan details deturned here yet...