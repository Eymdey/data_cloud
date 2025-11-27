terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  project = "terraform-479510"
  region  = "europe-west1"
  zone    = "europe-west1-b"
}
