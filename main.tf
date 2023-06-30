resource "github_repository" "example" {
  name                        = "mystaticwebsite"
  description                 = "My awesome codebase"
  allow_auto_merge            = false
  allow_merge_commit          = false
  allow_rebase_merge          = false
  allow_squash_merge          = true
  allow_update_branch         = false
  archived                    = false
  auto_init                   = false
  delete_branch_on_merge      = true
  has_discussions             = false
  has_downloads               = true
  has_issues                  = true
  has_projects                = true
  has_wiki                    = true
  is_template                 = false
  squash_merge_commit_message = "PR_BODY"
  squash_merge_commit_title   = "PR_TITLE"
  vulnerability_alerts        = false
}

resource "github_repository" "dbmsgroupproj" {
  name                   = "DBMS-GROUP-PROJECT"
  description            = "DBMS GROUP PROJECT"
  allow_auto_merge       = false
  allow_merge_commit     = false
  allow_rebase_merge     = false
  allow_squash_merge     = true
  allow_update_branch    = false
  archived               = false
  auto_init              = false
  delete_branch_on_merge = true
  has_discussions        = false
  has_downloads          = true
  has_projects           = true
  has_wiki               = true
  squash_merge_commit_message = "PR_BODY"
  squash_merge_commit_title   = "PR_TITLE"
  vulnerability_alerts        = false
}

resource "github_repository" "GithubTerraform" {
  name                        = "Github-Tf-Configuration"
  description                 = "This is code to manage my github via terraform"
  allow_auto_merge            = false
  allow_merge_commit          = false
  allow_rebase_merge          = false
  allow_squash_merge          = true
  allow_update_branch         = false
  archived                    = false
  auto_init                   = false
  delete_branch_on_merge      = true
  has_discussions             = false
  has_downloads               = true
  has_issues                  = true
  has_projects                = true
  has_wiki                    = true
  is_template                 = false
  squash_merge_commit_message = "PR_BODY"
  squash_merge_commit_title   = "PR_TITLE"
  vulnerability_alerts        = false
}

