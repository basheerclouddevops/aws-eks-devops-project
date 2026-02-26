resource "aws_ecr_repository" "kyc" {
  name = "kyc-repo"
}

resource "aws_ecr_repository" "portfolio" {
  name = "portfolio-repo"
}
