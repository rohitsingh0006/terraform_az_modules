# to define variables for resource groups

variable "vnets" {
  type = map(object({
    name          = string
    address_space = list(string)
  }))
}
