terraform {
  backend "s3" {
    bucket = "my-local-b"
    key    = "state"
    region = "us-east-1"
  }
}
