module "qa-viewer-cloudfront" {
  source = "../../modules/qa-cloudfront"
  #checkov:skip=CKV_TF_1:UKHSA "Internal module, release process to be defined"
  #checkov:skip=CKV_TF_2:UKHSA "Internal module, release process to be defined"
  cloudfront = var.cloudfront
  tags       = var.tags
  # region     = var.region
}
