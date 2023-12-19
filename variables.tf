# variables.tf

variable "aws_region" {
  description = "The AWS region where the SSM parameter will be created"
  type        = string
  default     = "us-east-1"
}

variable "parameter_name" {
  description = "The name of the SSM parameter"
  type        = string
  default     = "/example/my-parameter"
}

variable "parameter_description" {
  description = "The description of the SSM parameter"
  type        = string
  default     = "Example SSM Parameter"
}

variable "parameter_type" {
  description = "The type of the SSM parameter (String, StringList, SecureString)"
  type        = string
  default     = "SecureString"
}

variable "parameter_value" {
  description = "The value of the SSM parameter"
  type        = string
  default     = "my-secret-value"
}

variable "kms_key_id" {
  description = "The KMS Key ID or Alias for the SSM parameter (optional)"
  type        = string
  default     = null
}

variable "parameter_overwrite" {
  description = "Whether to overwrite an existing SSM parameter value"
  type        = bool
  default     = false
}

variable "parameter_allowed_pattern" {
  description = "A regular expression pattern used to validate the SSM parameter value"
  type        = string
  default     = ".*"
}
