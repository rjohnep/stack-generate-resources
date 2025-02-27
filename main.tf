resource "random_password" "this" {
  count = 1000 # Just adjust this number
  length = 10
}
