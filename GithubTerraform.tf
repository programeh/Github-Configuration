resource "github_repository" "Github_Configuration" {
  name                        = "Github-Configuration"
  description                 = "Code to manage github configuration using terraform"
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

resource "github_branch_protection" "Github_Configuration_BP" {
  allows_deletions                = false
  allows_force_pushes             = true
  blocks_creations                = false
  enforce_admins                  = true
  lock_branch                     = false
  pattern                         = "master"
  push_restrictions               = []
  repository_id                   = github_repository.Github_Configuration.node_id
  require_conversation_resolution = false
  require_signed_commits          = false
  required_linear_history         = false

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = false
    require_last_push_approval      = true
    required_approving_review_count = 1
    restrict_dismissals             = false
  }

  required_status_checks {
    contexts = []
    strict   = true
  }
}

resource "github_team" "CodeCheckers" {
  name = "defaultCodeCheckers"
}

resource "github_team_repository" "CodecheckerTeam" {
  team_id    = github_team.CodeCheckers.id
  repository = github_repository.Github_Configuration.name
  permission = "admin"
}