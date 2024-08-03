variable "env_name" {
  description = "Name of Env"
  type        = string
  default     = "test"
  validation {
    condition     = length(var.env_name) < 5 && can(regex("[[:lower:]]", var.env_name))
    error_message = "The env_name value must be a less then 5 char abd have lower case"
  }
}

variable "product_name" {
  description = "Name of Product"
  type        = string
  default     = "test"
  validation {
    condition     = length(var.product_name) < 20 && can(regex("[[:lower:]]", var.product_name))
    error_message = "The product_name value must be a less then 10 char abd have lower case"
  }
}

variable "resource_location" {
  description = "resource_location"
  type        = string
  default     = "eastus2"
}

variable "resource_group_name" {
  description = "resource_group_name"
  type        = string
  default     = "PROD"
}

variable "acr_name" {
  description = "acr_name"
  type        = string
  default     = "test"
}

variable "acr_sku" {
  description = "acr_sku"
  type        = string
  default     = "Basic"
}

variable "acr_admin_enabled_status" {
  description = "acr_admin_enabled_status"
  type        = string
  default     = "true"
}