resource "google_compute_network" "my_network" {
  name                    = "vibnetwork"
  auto_create_subnetworks = false
}
