variable "subscription_id" {
  description = "ID de mi suscripcion de Azure"
  type        = string
  sensitive   = true
}
variable "service_plan_sku_name" {
  description = "SKU del App Service Plan (ej. F1, B1, P1v2)"
  type        = string
  default     = "F1"
}

variable "application_type" {
  description = "Application type for the Azure Application Insights resource"
  type        = string
  default     = "web"
}

variable "node_version" {
  description = "Node.js version for the Azure Linux Web App (ej. 18-lts, 20-lts, 22-lts)"
  type        = string
  default     = "20-lts"
}

variable "log_analytics_sku" {
  description = "SKU del espacio de trabajo de Log Analytics"
  type        = string
  default     = "PerGB2018"
}

variable "web_app_name" {
  description = "Nombre de mi aplicacion web QA"
  type        = string
  default     = "app-zahid-integradora-qa-mxc-001"
}