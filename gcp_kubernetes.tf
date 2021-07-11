resource "google_container_cluster" "kubey" {
  name               = "kubeycluster"
  zone               = "australia-southeast1-b"
  initial_node_count = "2"

  master_auth {
    username = "vibhuti-abhi"
    password = ""
  }

  #authorizations scopes
  #URI paths to Google APIs required to get the Kuberenetes cluster built
  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    labels {
      this-is-for = "dev-cluster"
    }

    tags = ["dev", "work"]
  }
}
