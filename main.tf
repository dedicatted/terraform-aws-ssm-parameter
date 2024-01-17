# main.tf
module "ssm_parameter" {
  source          = "terraform-aws-modules/ssm-parameter/aws"
  version         = "1.0.0"
  name            = var.parameter_name
  description     = var.parameter_description
  type            = var.parameter_type
  value           = var.parameter_value
  key_id          = var.kms_key_id
  overwrite       = var.parameter_overwrite
  allowed_pattern = var.parameter_allowed_pattern
}
