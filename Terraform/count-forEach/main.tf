resource "local_file" "pet" {
  filename = var.filename[count.index]
  count    = length(var.filename)
  content  = "This is a pet file ${count.index + 1}"
}

# output "pet_file" {
#   value = local_file.pet
# }