variable "application_name" {
  description = "Nombre de la aplicación."
  type        = string
  default     = "integradora"
}

variable "length" {
  description = "Longitud de la cadena aleatoria."
  type        = number
  default     = 6
  validation {
    condition     = var.length >= 1 && floor(var.length) == var.length
    error_message = "La longitud debe ser un número entero positivo."
  }
}

variable "enable_monitoring" {
  description = "Ejemplo bool: habilitar o deshabilitar el monitoreo."
  type        = bool
  default     = true
}

variable "regions" {
  description = "Ejemplo list(string): regiones del ejercicio."
  type        = list(string)
  default     = ["us-east-1", "us-west-2"]
}

variable "environment_tags" {
  description = "Ejemplo map(string): etiquetas por entorno."
  type        = map(string)
  default = {
    dev  = "Development"
    prod = "Production"
  }
}

variable "instance_count" {
  description = "Ejemplo number: cantidad de instancias; no despliega instancias."
  type        = number
  default     = 3
}

variable "application_config" {
  description = "Ejemplo object: configuración de la aplicación."
  type = object({
    version      = string
    maintainer   = string
    dependencies = list(string)
  })
  default = {
    version      = "1.0.0"
    maintainer   = "John Doe"
    dependencies = ["dependency1", "dependency2"]
  }
}

variable "allowed_networks" {
  description = "Ejemplo set(string): redes permitidas sin duplicados."
  type        = set(string)
  default     = ["10.0.0.0/16", "10.1.0.0/16"]
}
