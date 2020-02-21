resource "google_compute_network" "a_vpc" {
  project                 = "${var.project}"
  name                    = "${var.vpc_network_name}"
  routing_mode            = "${upper(var.routing_mode)}"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "a_public_subnet" {
  project                  = "${var.project}"
  name                     = "${var.public_subnet_name}"
  region                   = "${var.region}"
  network                  = "${google_compute_network.a_vpc.self_link}"
  ip_cidr_range            = "${var.public_subnet_ip_cidr_range}"
  private_ip_google_access = false
}

resource "google_compute_subnetwork" "a_private_subnet" {
  project                  = "${var.project}"
  name                     = "${var.private_subnet_name}"
  region                   = "${var.region}"
  network                  = "${google_compute_network.a_vpc.self_link}"
  ip_cidr_range            = "${var.private_subnet_ip_cidr_range}"
  private_ip_google_access = true
}

resource "google_compute_firewall" "default_subnet_ingress_allow_all" {
  project   = "${var.project}"
  name      = "${google_compute_network.a_vpc.name}-ingress-default-inter-subnet-allow-all"
  network   = "${google_compute_network.a_vpc.self_link}"
  direction = "INGRESS"

  source_ranges = [
    "${google_compute_subnetwork.a_public_subnet.ip_cidr_range}",
    "${google_compute_subnetwork.a_private_subnet.ip_cidr_range}",
  ]

  allow = {
    protocol = "all"
  }
}
