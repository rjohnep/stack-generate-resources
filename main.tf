resource "random_password" "this" {
  count = 1001 # Just adjust this number
  length = 9
}

resource "random_password" "name" {
  count = 33 # Just adjust this number
  length = 8
}

variable "pet_count" {
  default = 15
}

resource "random_pet" "example" {
  count  = var.pet_count
  length = 2
}

output "pet_names" {
  value = [for pet in random_pet.example : pet.id]
}
