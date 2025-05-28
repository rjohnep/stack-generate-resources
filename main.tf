resource "random_password" "this" {
  count = 1001 # Just adjust this number
  length = 9
}

resource "random_password" "name" {
  count = 33 # Just adjust this number
  length = 8
}

resource "aws_s3_bucket" "example" {
  count = 33 # Just adjust this number
  length = 8
}
