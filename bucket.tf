#provider "google" {
 # credentials = ""         # Service Account Credentials
 # project = "poised-vial-319809"                            # Project Name
  #region  = "us-central1"                             # Region
  #zone    = "${var.zone}"                               # Zone
#}
# Create Bucket
resource "google_storage_bucket" "autoexpire-ps97" {
  name          = "piyush79727023"
  # location      = "us-central1-c"
  force_destroy = true

  
# Life cycle policy for deleteing bucket 
  lifecycle_rule {
    condition {
      age = 3                           
    }
    action {
      type = "Delete"
    }
  }
}
