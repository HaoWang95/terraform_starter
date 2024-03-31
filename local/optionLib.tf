variable "options" {
  description = "A list of service options"
  type = object({
    language    = list(string)
    platform    = list(string)
    serviceType = list(string)
    datasource  = list(string)
  })
}
