terraform {
  backend "s3" {
    bucket                      = "my-local-b"
    key                         = "state"
    region                      = "us-east-1"
    endpoint                    = "http://localhost:4566"
    sts_endpoint                = "http://localhost:4566"
    iam_endpoint                = "http://localhost:4566"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_requesting_account_id  = true
    use_path_style              = true
  }
}
