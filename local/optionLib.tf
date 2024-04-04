terraform {
  required_version = ">= 0.12"
  required_providers {
    random = {
      source = "harshicorp/random"
    }
  }

}


variable "options" {
  description = "A list of service options"
  type = object({
    language    = list(string)
    platform    = list(string)
    serviceType = list(string)
    datasource  = list(string)
  })
}

resource "random_shuffle" "random_language" {
  input = var.options["language"]
}

resource "random_shuffle" "random_platform" {
  input = var.options["platform"]
}

resource "random_shuffle" "random_serviceType" {
  input = var.options["serviceType"]
}

resource "random_shuffle" "random_datasource" {
  input = var.options["datasource"]
}

output "optionLibs" {
  value       = ""
  sensitive   = true
  description = "description"
  depends_on  = []
}
