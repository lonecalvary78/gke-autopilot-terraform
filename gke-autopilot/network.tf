resource "google_compute_network" "gke_autopilot_network" {
  name                    = "gke-autopilot-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "gke_autopilot_subnetwork" {
  name          = "gke-autopilot-subnetwork"
  ip_cidr_range = var.cidr_ip_range
  network       = google_compute_network.gke_autopilot_network.self_link
}