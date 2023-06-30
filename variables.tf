variable "github_token" {
  description = "GitHub access token used to configure the provider"
  type        = string
  default     = "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"
  sensitive   = true
}

variable "PUBLIC" {
  default = "public"
}