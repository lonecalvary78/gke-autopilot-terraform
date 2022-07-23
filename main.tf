terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.27.0"
    }
  }
}

provider "google" {
  credentials = file(var.sa-credential-file-path)
  project     = var.project-id
  region      = var.region
  zone        = var.zone
}

module "gke-autopilot" {
  source = "./gke-autopilot"
  region = var.region
  cluster-name = var.cluster-name
  release-channel-type = var.release_channel
  cidr_ip_range = var.cidr_ip_range
}