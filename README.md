
<!-- Module Name and description are required -->
# GCP VPC Module

Creates a regional VPC with two subnets: public and private.

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

Module usage is as follows:

```hcl
module "your_custom_name_for_your_instance_of_this_module" {
  source           = "git@github.com:thesis/terraform-google-vpc.git"
  vpc_network_name = "name-of-your-vpc-network"
  project          = "gcp-id-of-your-project"
  region           = "region-name"
  routing_mode     = "regional-or-global"

  public_subnet_name          = "name-of-your-public-subnet"
  public_subnet_ip_cidr_range = "CIDR-range-for-public-subnet"

  private_subnet_name          = "name-of-your-private-subnet"
  private_subnet_ip_cidr_range = "CIDR-range-for-private-subnet"
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
<!-- ## Notes -->


<!-- License is required -->
## License

See [LICENSE](./LICENSE).
