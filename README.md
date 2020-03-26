
<!-- Module Name and description are required -->
# GCP VPC Module

<!-- TODO: Add description -->

<!-- Compatibility section is optional -->
## Compatibility

This module is compatible with Terraform `<= 0.12.0`
And the Google Cloud Provider `<= 1.19.0`

<!-- Usage section is required -->
## Usage

<!-- NOTE: Examples should go into an `/examples` directory, with a link here
along the following lines:

There are multiple examples included in the [examples](./examples/) folder but
simple usage is as follows:
 -->
Sample module block showing required fields configured.  You can have
multiple examples if it makes sense for the module.

```hcl
module "your_custom_name_for_your_instance_of_this_module" {
  source                = "git@github.com:thesis/this-module-name.git"
  name                  = "name-of-your-project"
  org_id                = "your-org-id"
  billing_account       = "your-billing-account"
  project_owner_members = ["john@email.co", "lilly@email.co",]
  location              = "us-central1"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| private\_subnet\_ip\_cidr\_range | The primary CIDR range for the private subnet. | string | `""` | no |
| private\_subnet\_name | The primary private subnet name. | string | `""` | no |
| project | The project id of the project you want to create the bucket in. | string | `""` | no |
| public\_subnet\_ip\_cidr\_range | The primary CIDR range for the public subnet. | string | `""` | no |
| public\_subnet\_name | The primary public subnet name. | string | `""` | no |
| region | The regions where resources are generated. | string | `""` | no |
| routing\_mode | Sets dynamic routing scope to global or regional.  Must be regional or global. | string | `""` | no |
| vpc\_network\_name | The name of your vpc-network. | string | `""` | no |
| vpc\_subnet\_prefix | prefix naming for any subnet created via the module. | string | `"vpc-subnet"` | no |

## Outputs

| Name | Description |
|------|-------------|
| vpc\_network\_gateway\_ip | The ip of the gateway assigned to the vpc-network. |
| vpc\_network\_name | The name of your created vpc-network |
| vpc\_network\_self\_link | The URI of the created vpc-network resource. |
| vpc\_private\_subnet\_name | The name of your created private subnet. |
| vpc\_private\_subnet\_self\_link | The URI of the created private subnet resource. |
| vpc\_public\_subnet\_name | The name of your created public subnet. |
| vpc\_public\_subnet\_self\_link | The URI of the created public subnet resource. |
| vpc\_subnet\_prefix | prefix naming for any subnet created via the module. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

<!-- Notes section is optional -->
## Notes

Anything quirky about the module folks may want to know about. Relevant
links or additional useful information.  Format is up to you.

<!-- License is required -->
## License

See [LICENSE](./LICENSE) for full details.

<!-- Before open-sourcing this module, Remove this comment and update the
  LICENSE file at the repo root. Else: Copyright Thesis, Inc., 2020 -->
