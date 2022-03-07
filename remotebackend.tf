terraform {
    backend "s3"{
        bucket ="remotebackenddemobucket"
        key = "myfiles/terraform.tfstate"
        region="us-east-2"
    }
}