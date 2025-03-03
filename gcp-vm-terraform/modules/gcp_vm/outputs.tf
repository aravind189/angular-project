output "vm_public_ip" {
  description = "The external IP of the virtual machine"
  value       = google_compute_instance.vm_instance.network_interface.0.access_config.0.nat_ip
}

