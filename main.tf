resource "github_repository" "repository" {
  name        = var.name
  description = var.description
  topics      = var.topics
  visibility  = var.visibility
  is_template = var.is_template

  dynamic "template" {
    for_each = flatten([compact(values(var.template))])
    content {
      owner      = var.template.owner
      repository = var.template.repository
    }
  }

  has_downloads = var.has_downloads
  has_issues    = var.has_issues
  has_projects  = var.has_projects
  has_wiki      = var.has_wiki

  auto_init              = true
  delete_branch_on_merge = true
  vulnerability_alerts   = true

  lifecycle {
    ignore_changes = [name]
  }
}

resource "github_branch_default" "default" {
  repository = github_repository.repository.name
  branch     = var.default_branch
}

resource "github_branch_protection_v3" "default" {
  count      = var.visibility == "private" ? 0 : 1
  repository = github_repository.repository.id
  branch     = github_branch_default.default.branch

  dynamic "required_status_checks" {
    for_each = var.required_status_checks

    content {
      strict   = required_status_checks.value
      contexts = [required_status_checks.key]
    }
  }
}