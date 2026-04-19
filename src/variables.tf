variable "resource_group_name" {
  type        = string
  description = "Name of the parent resource group."
}

variable "location" {
  type        = string
  description = "Location of the parent resource group."
  default     = "West Europe"
}

variable "tags" {
  type        = map(string)
  description = "Any tags that should be present on the resources."
  default     = {}
}

variable "service_plan_name" {
  type        = string
  description = "Name of the service plan."
}

variable "app_service_name" {
  type        = string
  description = "Name of the web app."
}

variable "os_type" {
  type        = string
  description = "OS type for the service plan (Linux or Windows)."
  default     = "Linux"
}

variable "sku_name" {
  type        = string
  description = "SKU name for the service plan (e.g. F1, B1, S1, P1v3)."
  default     = "F1"
}
