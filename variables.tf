variable "GITHUB_TOKEN" {
  description = "GitHub access token used to configure the provider"
  type        = string
  sensitive   = true
}

variable "PUBLIC" {
  default = "public"
}
