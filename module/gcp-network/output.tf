output "subnet_self_link" {
 value = google_compute_subnetwork.us-central.self_link  
}
output "subnet_asia-self_link" {
 value = google_compute_subnetwork.asia-east.self_link  
}