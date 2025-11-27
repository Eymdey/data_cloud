terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  project = "votre-projet-id" # Remplacez par votre ID de projet GCP
  region  = "europe-west1"
  zone    = "europe-west1-b"
}
