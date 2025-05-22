module "oidc" {
  source = "../../modules/qa-oidc"
  #checkov:skip=CKV_TF_1:UKHSA "Internal module, release process to be defined"
  #checkov:skip=CKV_TF_2:UKHSA "Internal module, release process to be defined"
  iac_iam         = var.iac_iam
  environment_iac = var.environment_iac
  # app_iam         = var.app_iam
  # environment_app = var.environment_app
}
