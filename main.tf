provider "google" {
  access_token = var.access_token
}

resource "google_secret_manager_secret" "secret-basic" {
  secret_id = "secret-wf-google-tf"
  project      = "manifest-access-320809"

  labels = {
    label = "my-label"
  }

  replication {
    user_managed {
      replicas {
        location = "us-central1"
      }
      replicas {
        location = "us-east1"
      }
    }
  }
}
