// main.tf
terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
  }
}

provider "random" {}

resource "random_pet" "name" {
  length    = 2
  separator = "-"
}

output "pet_name" {
  value = random_pet.name.id
}