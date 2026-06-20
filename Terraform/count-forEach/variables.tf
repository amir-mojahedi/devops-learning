variable "filename" {
  default = ["./pet.txt", "./pet2.txt", "./pet3.txt"]
  type    = list(string)
}