resource "random_password" "this" {
  count = 1001 # Just adjust this number
  length = 9
}

resource ".env.local" "var" {
  count = 33 # Just adjust this number
  length = 9
}
