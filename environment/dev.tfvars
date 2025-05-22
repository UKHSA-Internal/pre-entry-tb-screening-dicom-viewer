environment_app = "dev"
environment_iac = "dev"

tags = {
  project     = "PETS"
  client      = "UKHSA"
  owner       = "UKHSA"
  environment = "dev"
  additional_tags = {
    "CostCenter" = "IT-Dept"
  }
}

buckets = [
  {
    name                    = "aw-pets-euw-dev-s3-dicomviewer",
    iam_role_required       = true
    service_principal       = "cloudfront.amazonaws.com"
    actions                 = ["s3:ListBucket"]
    allow_cloudfront_access = true
  }
]

cloudfront = {
  cloudfront_log_bucket_name = "logs-aw-pets-euw-dev-s3-qacloudfront"
  domain_name                = ""
  route53_domain             = ""
  cloudfront_log_bucket      = "logs-aw-pets-euw-dev-s3-qacloudfront.s3.amazonaws.com"
  comment                    = "Dicom Viewer Dev CloudFront Distribution"
  s3_one_bucket              = "aw-pets-euw-dev-s3-dicomviewer"
  s3_one                     = "aw-pets-euw-dev-s3-dicomviewer.s3.amazonaws.com"
  s3_one_description         = "Dicom Viewer Dev CloudFront Distribution"
  s3_malware                 = ""
  https_s3_malware           = ""
  route_53_query_log_group   = ""
}

# app_iam = {
#   actions = [
#     "secretsmanager:GetSecretValue",
#     "lambda:UpdateFunctionCode",
#     "lambda:PublishLayerVersion",
#     "lambda:UpdateFunctionConfiguration",
#     "lambda:GetLayerVersion",
#     "s3:ListBucket",
#     "s3:PutObject",
#     "s3:GetObject",
#     "kms:GenerateDataKey",
#     "kms:Decrypt",
#     "iam:UpdateAssumeRolePolicy"
#   ]
# }

iac_iam = {
  actions = [
    "logs:ListTagsLogGroup",
    "logs:TagLogGroup",
    "logs:DescribeLogGroups",
    "logs:UntagLogGroup",
    "logs:DeleteLogGroup",
    "logs:UntagResource",
    "logs:TagResource",
    "logs:GetLogGroupFields",
    "logs:CreateLogGroup",
    "logs:ListTagsForResource",
    "iam:TagRole",
    "iam:CreatePolicy",
    "iam:TagPolicy",
    "iam:GetPolicy",
    "iam:GetPolicyVersion",
    "iam:ListPolicyVersions",
    "iam:CreatePolicyVersion",
    "iam:DeletePolicyVersion",
    "iam:DeletePolicy",
    "iam:DeleteGroupPolicy",
    "iam:PassRole",
    "iam:CreateRole",
    "iam:ListRolePolicies",
    "iam:ListAttachedRolePolicies",
    "iam:ListRoles",
    "iam:ListRoleTags",
    "iam:GetRole",
    "iam:GetRolePolicy",
    "iam:AttachRolePolicy",
    "iam:DetachRolePolicy",
    "iam:ListInstanceProfilesForRole",
    "iam:DeleteRole",
    "route53:ListHostedZones",
    "cloudfront:CreateOriginAccessControl",
    "cloudfront:GetOriginAccessControl",
    "cloudfront:DeleteOriginAccessControl",
    "cloudfront:CreateDistribution",
    "cloudfront:TagResource",
    "cloudfront:CreateCloudFrontOriginAccessIdentity",
    "cloudfront:GetCloudFrontOriginAccessIdentity",
    "cloudfront:UpdateOriginAccessControl",
    "cloudfront:GetDistribution",
    "cloudfront:ListTagsForResource",
    "cloudfront:UpdateDistribution",
    "cloudfront:DeleteDistribution",
    "cloudfront:DeleteCloudFrontOriginAccessIdentity",
    "secretsmanager:GetSecretValue",
    "secretsmanager:DescribeSecret",
    "secretsmanager:GetResourcePolicy",
    "kms:*",
    "sts:*",
    "iam:GetUser",
    "iam:CreateUser",
    "iam:AddUserToGroup",
    "iam:GetGroup",
    "iam:CreateGroup",
    "iam:ListEntitiesForPolicy",
    "iam:ListGroupsForUser",
    "iam:GetGroupPolicy",
    "iam:PutRolePolicy",
    "iam:PutGroupPolicy",
    "iam:DeleteRolePolicy",
    "iam:GetOpenIDConnectProvider",
    "iam:CreateOpenIDConnectProvider",
    "iam:UpdateOpenIDConnectProviderThumbprint",
    "iam:DeleteOpenIDConnectProvider",
    "route53:GetHostedZone",
    "route53:ListTagsForResource",
    "route53:ListResourceRecordSets",
    "route53:ChangeResourceRecordSets",
    "route53:GetChange",
    "wafv2:GetWebACL",
    "wafv2:ListTagsForResource",
    "wafv2:UpdateWebACL",
    "wafv2:TagResource",
    "wafv2:ListWebACLs",
    "wafv2:DeleteWebACL",
    "wafv2:CreateWebACL",
    "cloudfront:DeleteFunction",
    "cloudfront:DescribeFunction",
    "cloudfront:GetFunction",
    "cloudfront:UpdateFunction",
    "cloudfront:PublishFunction",
    "cloudfront:CreateFunction",
    "cloudfront:GetResponseHeadersPolicy",
    "cloudfront:DeleteResponseHeadersPolicy",
    "cloudfront:CreateResponseHeadersPolicy",
    "cloudfront:ListOriginRequestPolicies",
    "cloudfront:GetOriginRequestPolicy",
    "cloudfront:ListCachePolicies",
    "cloudfront:GetCachePolicy",
    "acm:ListCertificates",
    "acm:DescribeCertificate",
    "acm:GetCertificate",
    "acm:ListTagsForCertificate",
    "cloudfront:UpdateResponseHeadersPolicy",
    "s3:*",
    "iam:UpdateAssumeRolePolicy",
    "cloudtrail:CreateTrail",
    "cloudtrail:AddTags",
    "cloudtrail:DescribeTrails",
    "cloudtrail:DeleteTrail",
    "cloudtrail:StartLogging",
    "cloudtrail:PutEventSelectors",
    "cloudtrail:GetTrailStatus",
    "cloudtrail:GetEventSelectors",
    "cloudtrail:ListTags",
    "cloudtrail:UpdateTrail",
    "logs:PutResourcePolicy",
    "logs:PutRetentionPolicy",
    "logs:DescribeResourcePolicies",
    "logs:DeleteResourcePolicy",
    "route53:CreateQueryLoggingConfig",
    "route53:GetQueryLoggingConfig",
    "route53:DeleteQueryLoggingConfig",
    "dynamodb:PutItem",
    "dynamodb:GetItem"
  ]
}
