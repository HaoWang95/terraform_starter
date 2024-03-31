terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

# Define a resource which is to create a local file
resource "local_file" "test_file" {
  filename = "test_file.txt"
  content  = <<-EOT
    This is a test file generated through Terraform.
    Mainly to get familiar with Terraform commands.
    Only contents defined here will be synchronized by terraform.
  EOT
}