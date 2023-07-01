terraform {
  backend "remote" {
    organization = "programeh"
    workspaces {
      name = "GithubTfConfiguration"
    }
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}
provider "github" {
  owner = "programeh"
  token = var.GITHUB_TOKEN
}