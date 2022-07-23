output "gke_autopilot_network_name" {
  value = google_compute_network.gke_autopilot_network.name
}

output "gke_autopilot_subnetwork_name" {
  value = google_compute_subnetwork.gke_autopilot_subnetwork.name
}

output "gke_autopilot_subnetwork_ip_range" {
  value = google_compute_subnetwork.gke_autopilot_subnetwork.ip_cidr_range
}


output "gke_autopilot_name" {
  value = google_container_cluster.gke_autopilot_cluster.name
}

output "gke_autopilot_cluster_location" {
  value = google_container_cluster.gke_autopilot_cluster.location
}

output "gke_autopilot_cluster_version" {
  value = google_container_cluster.gke_autopilot_cluster.node_version
}