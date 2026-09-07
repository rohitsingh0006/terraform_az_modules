# to define variables for resource groups

variable "rgs" {
  type = map(object({
    name     = string
    location = string
  }))
}
