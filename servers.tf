resource "google_compute_instance" "server2" {
  name         = "thesecondserver"
  machine_type = "n1-standard-1"
  zone         = "australia-southeast1-b"

  boot_disk {
    initialize_params {
      image = "windows-2016"
    }
  }

  network_interface {
    subnetwork = "${google_compute_subnetwork.my-subnet.name}"
  }
}
