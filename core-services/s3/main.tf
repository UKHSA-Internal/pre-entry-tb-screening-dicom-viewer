module "qa-viewer-s3" {
  source = "../../modules/s3"
  #checkov:skip=CKV_TF_1:UKHSA "Internal module, release process to be defined"
  #checkov:skip=CKV_TF_2:UKHSA "Internal module, release process to be defined"
  buckets                           = var.buckets
  s3_force_destroy                  = var.s3_force_destroy
  s3_access_log_delivery_policy     = var.s3_access_log_delivery_policy
  s3_deny_insecure_transport_policy = var.s3_deny_insecure_transport_policy
  s3_elb_log_delivery_policy        = var.s3_elb_log_delivery_policy
  s3_lb_log_delivery_policy         = var.s3_lb_log_delivery_policy
  s3_require_latest_tls_policy      = var.s3_require_latest_tls_policy
  #  tags                              = var.tags
  cloudfront         = var.cloudfront
  region             = var.region
  malware_protection = var.malware_protection
  cloudtrail         = var.cloudtrail
}

