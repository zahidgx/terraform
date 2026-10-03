output "random_string" {
  value     = random_string.example.result
  sensitive = true
}

# Video 5 usa este nombre para la salida del sufijo aleatorio.
output "application_name" {
  value = random_string.example.result
}

output "unique_name" {
  value = local.unique_name
}

# Salida adicional para observar los tipos del video 6.
output "data_type_examples" {
  value = {
    application_name   = var.application_name
    length             = var.length
    enable_monitoring  = var.enable_monitoring
    regions            = var.regions
    environment_tags   = var.environment_tags
    instance_count     = var.instance_count
    application_config = var.application_config
    allowed_networks   = var.allowed_networks
  }
}
