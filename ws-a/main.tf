terraform {
  required_version = ">= 1.4"
}

locals {
  # Bump to make the next run plan a change.
  revision = "14"
}

resource "terraform_data" "this" {
  input = "ws-a-${local.revision}"
}

output "revision" {
  value = terraform_data.this.output
}
