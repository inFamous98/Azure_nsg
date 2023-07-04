variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "nsgs" {
  description = "Network Security Group configurations"
  type        = map(object({
    location = string
    tags     = map(string)
    rules    = list(object({
      name                       = string
      priority                   = number
      direction                  = string
      access                     = string
      protocol                   = string
      source_port_range          = string
      destination_port_range     = string
      source_address_prefix      = string
      destination_address_prefix = string
    }))
  }))
}
