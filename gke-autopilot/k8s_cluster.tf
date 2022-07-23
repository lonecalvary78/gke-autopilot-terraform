resource "google_container_cluster" "gke_autopilot_cluster" {
  name       = "gke-autopilot-cluster"
  network    = google_compute_network.gke_autopilot_network.self_link
  subnetwork = google_compute_subnetwork.gke_autopilot_subnetwork.self_link
  location   = var.region
  enable_autopilot = true
  release_channel {
    channel = var.release-channel-type
  }

  private_cluster_config {
    enable_private_nodes = true
    enable_private_endpoint = true
    master_ipv4_cidr_block = var.cidr_ip_range
  }

  master_authorized_networks_config {
    dynamic "cidr_blocks" {
      for_each = var.cidr_ip_range
      content {
        cidr_block = cidr_blocks.value
      }
    }
  }

  ip_allocation_policy {
    cluster_secondary_range_name = var.cluster-name+"-pods"
    services_secondary_range_name = var.cluster-name+"-services"
  }
}