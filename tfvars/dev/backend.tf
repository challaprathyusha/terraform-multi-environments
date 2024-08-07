terraform{
    backend "s3" {
        bucket = "devenv-remote-state"
        key    = "dev-tfstate"
        region = "us-east-1"
        dynamodb_table  = "devenv-state-lock"
    }

}