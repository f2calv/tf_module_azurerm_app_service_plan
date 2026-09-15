output "service_plan_id" {
  description = "The ID of the service plan."
  value       = azurerm_service_plan.this.id
}

output "service_plan_name" {
  description = "The name of the service plan."
  value       = azurerm_service_plan.this.name
}

output "app_service_id" {
  description = "The ID of the web app."
  value       = var.os_type == "Linux" ? try(azurerm_linux_web_app.this_linux[0].id, null) : try(azurerm_windows_web_app.this_windows[0].id, null)
}

output "app_service_name" {
  description = "The name of the web app."
  value       = var.os_type == "Linux" ? try(azurerm_linux_web_app.this_linux[0].name, null) : try(azurerm_windows_web_app.this_windows[0].name, null)
}

output "default_hostname" {
  description = "The default hostname of the web app."
  value       = var.os_type == "Linux" ? try(azurerm_linux_web_app.this_linux[0].default_hostname, null) : try(azurerm_windows_web_app.this_windows[0].default_hostname, null)
}
