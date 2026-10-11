output "compute_cross_site_networks_id" {
  description = "Map of id values across all compute_cross_site_networks, keyed the same as var.compute_cross_site_networks except keys with no id are omitted"
  value       = { for k, v in google_compute_cross_site_network.compute_cross_site_networks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_cross_site_networks_deletion_policy" {
  description = "Map of deletion_policy values across all compute_cross_site_networks, keyed the same as var.compute_cross_site_networks except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_cross_site_network.compute_cross_site_networks : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_cross_site_networks_description" {
  description = "Map of description values across all compute_cross_site_networks, keyed the same as var.compute_cross_site_networks except keys with no description are omitted"
  value       = { for k, v in google_compute_cross_site_network.compute_cross_site_networks : k => v.description if v.description != null && length(v.description) > 0 }
}
output "compute_cross_site_networks_name" {
  description = "Map of name values across all compute_cross_site_networks, keyed the same as var.compute_cross_site_networks except keys with no name are omitted"
  value       = { for k, v in google_compute_cross_site_network.compute_cross_site_networks : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_cross_site_networks_project" {
  description = "Map of project values across all compute_cross_site_networks, keyed the same as var.compute_cross_site_networks except keys with no project are omitted"
  value       = { for k, v in google_compute_cross_site_network.compute_cross_site_networks : k => v.project if v.project != null && length(v.project) > 0 }
}

