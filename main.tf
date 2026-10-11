resource "kubernetes_certificate_signing_request" "certificate_signing_requests" {
  for_each = var.certificate_signing_requests

  auto_approve = each.value.auto_approve

  metadata {
    annotations   = each.value.metadata.annotations
    generate_name = each.value.metadata.generate_name
    labels        = each.value.metadata.labels
    name          = each.value.metadata.name
  }

  spec {
    request     = each.value.spec.request
    signer_name = each.value.spec.signer_name
    usages      = each.value.spec.usages
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
    }
  }
}

