
resource "random_string" "example" {
  length  = var.length
  special = true
}
