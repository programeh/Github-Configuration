output "internal_repository" {
  description = "Example repository JSON blob"
  value       = github_repository.example.html_url
}

output "githubrepository" {
  description="Github Configuration Url"
  value = github_repository.Github_Configuration.html_url
}