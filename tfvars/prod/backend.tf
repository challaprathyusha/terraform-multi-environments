terraform {
  backend "s3" {
    bucket = "prodenv-remote-state"
    key    = "prod-tfstate"
    region = "us-east-1"
    dynamodb_table  = "prodenv-state-lock"
  }
}
