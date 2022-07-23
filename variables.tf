variable "sa-credential-file-path" {
  description = "The path to the service account credentials file"
}
variable "project-id" {
  description = "The working Project ID on your GCP"
}

variable "region" {
  description = "The target region where you want to deploy the resources"
  default     = "us-central1"
}

variable "zone" {
  description = "The target zone where you want to deploy the resources"
  default     = "us-central1-a"
}

variable "cidr_ip_range" {
}


variable "cluster-name" {
  default = "gke-autopilot-cluster"
}


variable "release_channel" {
  default = "STABLE"
}