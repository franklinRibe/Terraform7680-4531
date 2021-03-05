#output "cpu" {
#  value       = google_compute_instance.vm.cpu_platform
#  description = "cpu da vm"
#}
#
#output "gw-us" {
#  value = google_compute_subnetwork.us-central.gateway_address
#  description = "Gateway da subrede US" 
#}
#
#output "network-ip" {
#  value = google_compute_instance.vm[*].network_interface[0].network_ip
#  description = "Gateway da subrede US" 
#}
#
#output "rules" {
# value = google_compute_firewall.fw.allow  
#}
#
#output "direction" {
#value = google_compute_firewall.fw.direction
#}
#
#output "tags-fingerprint" {
#value = google_compute_instance.vm[*].tags_fingerprint
#  
#}
#
#output "boot-init" {
#value = google_compute_instance.vm[*].boot_disk[0].initialize_params[0].size
#  
#}
#
#output "nat_ip" {
# value = google_compute_instance.vm[*].network_interface[0].access_config[0].nat_ip  
#  
#}
#
#