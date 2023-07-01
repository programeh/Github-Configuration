variable "github_token" {
  description = "GitHub access token used to configure the provider"
  type        = string
  sensitive   = true
}

variable "PUBLIC" {
  default = "public"
}
