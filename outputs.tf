output "certificate_signing_requests_id" {
  description = "Map of id values across all certificate_signing_requests, keyed the same as var.certificate_signing_requests except keys with no id are omitted"
  value       = { for k, v in kubernetes_certificate_signing_request.certificate_signing_requests : k => v.id if v.id != null && length(v.id) > 0 }
}
output "certificate_signing_requests_auto_approve" {
  description = "Map of auto_approve values across all certificate_signing_requests, keyed the same as var.certificate_signing_requests except keys with no auto_approve are omitted"
  value       = { for k, v in kubernetes_certificate_signing_request.certificate_signing_requests : k => v.auto_approve if v.auto_approve != null }
}
output "certificate_signing_requests_certificate" {
  description = "Map of certificate values across all certificate_signing_requests, keyed the same as var.certificate_signing_requests except keys with no certificate are omitted"
  value       = { for k, v in kubernetes_certificate_signing_request.certificate_signing_requests : k => v.certificate if v.certificate != null && length(v.certificate) > 0 }
}
output "certificate_signing_requests_metadata" {
  description = "Map of metadata values across all certificate_signing_requests, keyed the same as var.certificate_signing_requests except keys with no metadata are omitted"
  value       = { for k, v in kubernetes_certificate_signing_request.certificate_signing_requests : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}
output "certificate_signing_requests_spec" {
  description = "Map of spec values across all certificate_signing_requests, keyed the same as var.certificate_signing_requests except keys with no spec are omitted"
  value       = { for k, v in kubernetes_certificate_signing_request.certificate_signing_requests : k => one(v.spec) if v.spec != null && length(v.spec) > 0 }
}

