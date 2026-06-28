terraform {
  backend "s3" {
    bucket = "my-local-b"
    key    = "state"
    region = "us-east-1"

    # Direct LocalStack routing overrides for Terraform 1.5.x
    endpoint     = "http://localhost:4566"
    sts_endpoint = "http://localhost:4566"
    iam_endpoint = "http://localhost:4566"

    # Skip live AWS verification gates
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_requesting_account_id  = true
    s3_use_path_style           = true
  }
}
