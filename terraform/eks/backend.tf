### Backend ###
# S3
###############
# aws s3api create-bucket --bucket devops-poc-terraform --region us-east-1
# aws s3api put-bucket-versioning --bucket devops-poc-terraform --versioning-configuration Status=Enabled
terraform {
  backend "s3" {
    bucket = "devops-poc-terraform"
    key    = "env/dev/devops-poc-dev-eks.tfstate"
    region = "us-east-1"
    # dynamodb_table = "devops-poc-dev-terraform-backend-state-lock"
  }
}