resource "local_file" "pet" {
  filename = var.filename
  content  = "I love pets! specially ${random_pet.my-pet.id}"
}

resource "random_pet" "my-pet" {
  length    = var.length
  separator = var.separator
  prefix    = var.prefix
}


output "pet_name" {
  value = random_pet.my-pet.id
}

output "file_name" {
  value = local_file.pet.filename
}
output "file_content" {
  value = local_file.pet.content
}
