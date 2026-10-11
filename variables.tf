variable "certificate_signing_requests" {
  description = <<EOT
Map of certificate_signing_requests, attributes below
Required:
    - metadata (block):
        - annotations (optional)
        - generate_name (optional)
        - labels (optional)
        - name (optional)
    - spec (block):
        - request (required)
        - signer_name (optional)
        - usages (optional)
Optional:
    - auto_approve
    - timeouts (block):
        - create (optional)
EOT

  type = map(object({
    auto_approve = optional(bool)
    metadata = object({
      annotations   = optional(map(string))
      generate_name = optional(string)
      labels        = optional(map(string))
      name          = optional(string)
    })
    spec = object({
      request     = string
      signer_name = optional(string)
      usages      = optional(set(string))
    })
    timeouts = optional(object({
      create = optional(string)
    }))
  }))
}

