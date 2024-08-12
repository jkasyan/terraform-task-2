module "gke_cluster" {
  source         = "git::https://github.com/den-vasyliev/tf-google-gke-cluster.git"
  GOOGLE_REGION  = var.GOOGLE_REGION
  GOOGLE_PROJECT = var.GOOGLE_PROJECT
  GKE_NUM_NODES  = var.GKE_NUM_NODES
}

terraform {
  backend "gcs" {
    bucket = "my-tf-state-holder"
    prefix = "terraform/state"
  }
}
