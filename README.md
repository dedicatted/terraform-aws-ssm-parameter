# Terraform AWS SSM Parameter Module Documentation

This Terraform module creates an AWS Systems Manager (SSM) Parameter using the [terraform-aws-modules/ssm-parameter/aws](https://registry.terraform.io/modules/terraform-aws-modules/ssm-parameter/aws/latest) module. The SSM Parameter is a SecureString type and can be customized using various input variables.

## Prerequisites

Before running this Terraform module, ensure you have the following prerequisites:

1. [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
2. AWS credentials configured on your machine.
3. Access to an AWS account.

## Getting Started

### Create Terraform Configuration

Create a Terraform configuration file (`main.tf`) and customize it based on your requirements. For example:

```hcl
# main.tf

provider "aws" {
  region = "us-east-1"
}

module "ssm_parameter" {
  source          = "terraform-aws-modules/ssm-parameter/aws"
  version         = "1.0.0"
  name            = "/example/my-parameter"
  description     = "Example SSM Parameter"
  type            = "SecureString"
  value           = "my-secret-value"
}
```

## Customizing Variables

You can customize the Terraform configuration by adjusting the input variables in the `main.tf` file. Refer to the [Variables](#variables) section for a list of available variables.

### Example: Customized Configuration

```hcl
# main.tf

provider "aws" {
  region = "us-west-2"
}

module "ssm_parameter" {
  source          = "terraform-aws-modules/ssm-parameter/aws"
  version         = "1.0.0"
  name            = "/custom/my-parameter"
  description     = "Custom SSM Parameter"
  type            = "SecureString"
  value           = "custom-secret-value"
  key_id          = "alias/custom/kms-key"
  overwrite       = true
  allowed_pattern = "^custom-.*$"
}
```
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ssm_parameter"></a> [ssm\_parameter](#module\_ssm\_parameter) | terraform-aws-modules/ssm-parameter/aws | 1.0.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | The AWS region where the SSM parameter will be created | `string` | `"us-east-1"` | no |
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | The KMS Key ID or Alias for the SSM parameter (optional) | `string` | `null` | no |
| <a name="input_parameter_allowed_pattern"></a> [parameter\_allowed\_pattern](#input\_parameter\_allowed\_pattern) | A regular expression pattern used to validate the SSM parameter value | `string` | `".*"` | no |
| <a name="input_parameter_description"></a> [parameter\_description](#input\_parameter\_description) | The description of the SSM parameter | `string` | `"Example SSM Parameter"` | no |
| <a name="input_parameter_name"></a> [parameter\_name](#input\_parameter\_name) | The name of the SSM parameter | `string` | `"/example/my-parameter"` | no |
| <a name="input_parameter_overwrite"></a> [parameter\_overwrite](#input\_parameter\_overwrite) | Whether to overwrite an existing SSM parameter value | `bool` | `false` | no |
| <a name="input_parameter_type"></a> [parameter\_type](#input\_parameter\_type) | The type of the SSM parameter (String, StringList, SecureString) | `string` | `"SecureString"` | no |
| <a name="input_parameter_value"></a> [parameter\_value](#input\_parameter\_value) | The value of the SSM parameter | `string` | `"my-secret-value"` | no |

## Outputs

No outputs.
