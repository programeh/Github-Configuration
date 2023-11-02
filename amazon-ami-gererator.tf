resource "github_repository" "CleverTap-SNE-Amazon-Linux-CIS" {
  provider                    = github.CleverTap-SNE
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
  name                        = "Amazon-Linux-CIS"
  squash_merge_commit_message = "PR_BODY"
  squash_merge_commit_title   = "PR_TITLE"
  topics                      = []
  visibility                  = "internal"
  vulnerability_alerts        = false
}

resource "github_branch_protection" "CleverTap-SNE-Amazon-Linux-CIS" {
  provider                        = github.CleverTap-SNE
  allows_deletions                = false
  allows_force_pushes             = false
  blocks_creations                = false
  enforce_admins                  = true
  lock_branch                     = false
  pattern                         = "master"
  push_restrictions               = []
  repository_id                   = github_repository.CleverTap-SNE-Amazon-Linux-CIS.node_id
  require_conversation_resolution = false
  require_signed_commits          = false
  required_linear_history         = false

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = true
    require_last_push_approval      = true
    required_approving_review_count = 1
    restrict_dismissals             = false
  }

  required_status_checks {
    contexts = []
    strict   = true
  }
}

resource "github_repository_autolink_reference" "CleverTap-SNE-Amazon-Linux-CIS-SNE" {
  provider   = github.CleverTap-SNE
  repository = github_repository.CleverTap-SNE-Amazon-Linux-CIS.name

  key_prefix = "SNE-"

  target_url_template = "https://wizrocket.atlassian.net/browse/SNE-<num>"
}

resource "github_team_repository" "CleverTap-SNE-Amazon-Linux-CIS-default-code-reviewers" {
  provider   = github.CleverTap-SNE
  team_id    = github_team.CleverTap-SNE-default-code-reviewers.id
  repository = github_repository.CleverTap-SNE-Amazon-Linux-CIS.name
  permission = "admin"
}

resource "github_actions_secret" "CleverTap-SNE-Amazon-Linux-CIS-BUILD_AWS_ACCESS_KEY_ID" {
  provider        = github.CleverTap-SNE
  repository      = github_repository.CleverTap-SNE-Amazon-Linux-CIS.name
  secret_name     = "BUILD_AWS_ACCESS_KEY_ID"
  plaintext_value = var.BUILD_AWS_ACCESS_KEY
}

resource "github_actions_secret" "CleverTap-SNE-Amazon-Linux-CIS-BUILD_AWS_SECRET_ACCESS_KEY" {
  provider        = github.CleverTap-SNE
  repository      = github_repository.CleverTap-SNE-Amazon-Linux-CIS.name
  secret_name     = "BUILD_AWS_SECRET_ACCESS_KEY"
  plaintext_value = var.BUILD_AWS_SECRET_ACCESS_KEY
}

resource "github_actions_secret" "CleverTap-SNE-Amazon-Linux-CIS-AWS_ACCESS_KEY_ID" {
  provider        = github.CleverTap-SNE
  repository      = github_repository.CleverTap-SNE-Amazon-Linux-CIS.name
  secret_name     = "AWS_ACCESS_KEY_ID"
  plaintext_value = var.AWS_ACCESS_KEY_ID
}

resource "github_actions_secret" "CleverTap-SNE-Amazon-Linux-CIS-AWS_SECRET_ACCESS_KEY" {
  provider        = github.CleverTap-SNE
  repository      = github_repository.CleverTap-SNE-Amazon-Linux-CIS.name
  secret_name     = "AWS_SECRET_ACCESS_KEY"
  plaintext_value = var.AWS_SECRET_ACCESS_KEY
}

resource "github_actions_secret" "CleverTap-SNE-Amazon-Linux-CIS-CLEVERTAP_SNE_BOT_ID" {
  provider        = github.CleverTap-SNE
  repository      = github_repository.CleverTap-SNE-Amazon-Linux-CIS.name
  secret_name     = "CLEVERTAP_SNE_BOT_ID"
  plaintext_value = var.clevertap-sne-bot-id
}

resource "github_actions_secret" "CleverTap-SNE-Amazon-Linux-CIS-CLEVERTAP_SNE_BOT_PRIVATE_ACCESS_KEY" {
  provider        = github.CleverTap-SNE
  repository      = github_repository.CleverTap-SNE-Amazon-Linux-CIS.name
  secret_name     = "CLEVERTAP_SNE_BOT_PRIVATE_ACCESS_KEY"
  plaintext_value = var.clevertap-sne-bot_2023-08-29_private-key_pem
}