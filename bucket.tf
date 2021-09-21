# Create Bucket
resource "google_storage_bucket" "auto-expire" {
  name          = "piyush79727023"
  location      = "us-central1-c"
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
