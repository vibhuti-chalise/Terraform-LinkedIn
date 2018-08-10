resource "google_compute_subnetwork" "my-subnet" {
  ip_cidr_range = "10.0.1.0/24"
  name          = "${var.subnet_names["subnet1"]}"
    network       = "${google_compute_network.my_network.self_link}"
  region        = "australia-southeast1"
}

resource "google_compute_subnetwork" "my-subnet2" {
  ip_cidr_range = "10.0.2.0/24"
  name          = "${var.subnet_names["subnet2"]}"
  network       = "${google_compute_network.my_network.self_link}"
  region        = "australia-southeast1"
}
