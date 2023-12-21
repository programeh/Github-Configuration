resource "github_repository" "CF-CLI" {
  name                        = "CF-CLI"
  description                 = "Cli tool to deploy cloudformation stacks"
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

resource "github_branch_protection" "CF-CLI_BP" {
  allows_deletions                = false
  allows_force_pushes             = true
  blocks_creations                = false
  enforce_admins                  = true
  lock_branch                     = false
  pattern                         = "master"
  push_restrictions               = []
  repository_id                   = github_repository.CF-CLI.node_id
  require_conversation_resolution = false
  require_signed_commits          = false
  required_linear_history         = false

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = false
    require_last_push_approval      = false
    required_approving_review_count = 0
    restrict_dismissals             = false
  }

  required_status_checks {
    contexts = []
    strict   = true
  }
}