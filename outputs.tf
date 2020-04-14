output "vpc_network_name" {
  description = "The name of your created vpc-network"
  value       = "${google_compute_network.a_vpc.name}"
}

output "vpc_network_self_link" {
  description = "The URI of the created vpc-network resource."
  value       = "${google_compute_network.a_vpc.self_link}"
}

output "vpc_network_gateway_ip" {
  description = "The ip of the gateway assigned to the vpc-network."
  value       = "${google_compute_network.a_vpc.gateway_ipv4}"
}

output "vpc_subnet_prefix" {
  description = "prefix naming for any subnet created via the module."
  value       = "${var.vpc_subnet_prefix}"
}

output "vpc_public_subnet_self_link" {
  description = "The URI of the created public subnet resource."
  value       = "${google_compute_subnetwork.a_public_subnet.self_link}"
}

output "vpc_public_subnet_name" {
  description = "The name of your created public subnet."
  value       = "${google_compute_subnetwork.a_public_subnet.name}"
}

output "vpc_private_subnet_self_link" {
  description = "The URI of the created private subnet resource."
  value       = "${google_compute_subnetwork.a_private_subnet.self_link}"
}

output "vpc_private_subnet_name" {
  description = "The name of your created private subnet."
  value       = "${google_compute_subnetwork.a_private_subnet.name}"
}
