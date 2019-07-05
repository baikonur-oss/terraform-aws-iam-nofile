variable "name" {
  description = "Resource name"
  type        = "string"
}

variable "type" {
  description = "IAM Role type: ec2/lambda/etc. Used for assume_role_policy principal; service names that have *.amazonaws.com identifiers should work."
  type        = "string"
}

variable "policy_json" {
  description = "IAM Role Policy Document (JSON)"
  type        = "string"
}
