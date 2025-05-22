# data "aws_caller_identity" "current" {}

# module "iam_github_oidc_provider" {
#   source  = "terraform-aws-modules/iam/aws//modules/iam-github-oidc-provider"
#   version = "~> 5.54.0"
# }

resource "aws_iam_policy" "iac" {
  name = "iac-qa-github-actions-oidc"
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect   = "Allow",
        Action   = var.iac_iam.actions,
        Resource = "*"
      }
    ]
  })
}

module "iac_iam_github_oidc_role" {
  source   = "terraform-aws-modules/iam/aws//modules/iam-github-oidc-role"
  version  = "~> 5.54.0"
  name     = "iac-qa-github-actions-oidc"
  subjects = ["UKHSA-Internal/pre-entry-tb-screening-dicom-viewer:environment:${var.environment_iac}"]
  policies = {
    TerraformCI = aws_iam_policy.iac.arn
  }
}

# resource "aws_iam_policy" "app" {
#   name = "app-qa-github-actions-oidc"
#   policy = jsonencode({
#     Version = "2012-10-17",
#     Statement = [
#       {
#         Effect   = "Allow",
#         Action   = var.app_iam.actions,
#         Resource = "*"
#       },
#       {
#         Effect   = "Allow",
#         Action   = ["iam:PassRole"]
#         Resource = ["arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/api_gateway_auth_invocation"]
#       }
#     ]
#   })
# }

# module "app_iam_github_oidc_role" {
#   source   = "terraform-aws-modules/iam/aws//modules/iam-github-oidc-role"
#   version  = "~> 5.54.0"
#   name     = "app-github-actions-oidc"
#   subjects = ["UKHSA-Internal/pre-entry-tb-screening-dicom-viewer:environment:${var.environment_app}"]
#   policies = {
#     TerraformCI = aws_iam_policy.app.arn
#   }
# }
