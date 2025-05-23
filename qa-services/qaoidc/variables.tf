variable "iac_iam" {
  description = "IAM policies for iac role"
  type = object({
    actions = list(string)
  })
}

# variable "app_iam" {
#   description = "IAM policies for app role"
#   type = object({
#     actions = list(string)
#   })
# }

# variable "environment_app" {
#   description = "Environment name"
#   type        = string
# }

variable "environment_iac" {
  description = "Environment name"
  type        = string
}
