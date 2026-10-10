
locals {
  # Sufijo de recursos para tu laboratorio
  suffix = "zahid-integradora-web-qa-mxc-001"

  # Region de Azure
  location = "Mexico Central"

  # Etiquetas de recursos
  tags = {
    Environment = "qa"
    Project     = "utvt-integradora"
    ManagedBy   = "terraform"
    Owner       = "zahid"
    Region      = "mxc"
  }
}
