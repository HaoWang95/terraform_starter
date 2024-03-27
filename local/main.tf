terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {

}

resource "local_file" "test_file" {
  filename = "test_file.txt"
  content  = <<-EOT
    This is a test file generated through Terraform.
    Mainly to get familiar with Terraform commands.
  EOT
}