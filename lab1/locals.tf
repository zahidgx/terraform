locals {
  unique_name = "${var.application_name}-${random_string.example.result}"
}
