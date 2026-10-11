resource "google_compute_cross_site_network" "compute_cross_site_networks" {
  for_each = var.compute_cross_site_networks

  name            = each.value.name
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  project         = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

