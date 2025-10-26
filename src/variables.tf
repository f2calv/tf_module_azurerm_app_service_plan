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
variable "app_service_plan_name" {
  type        = string
  description = "Name of the app service plan."
}
variable "app_service_name" {
  type        = string
  description = "Name of the app service."
}