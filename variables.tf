variable "default_branch" {
  type    = string
  default = "master"
}

variable "description" {
  type    = string
  default = "Maintained by Terraform"
}

variable "github_branch_protection" {
  type    = bool
  default = true
}

variable "has_downloads" {
  type    = bool
  default = false
}

variable "has_issues" {
  type    = bool
  default = false
}

variable "has_projects" {
  type    = bool
  default = false
}

variable "has_wiki" {
  type    = bool
  default = false
}

variable "name" {
  type = string
}

variable "push_restrictions" {
  type    = list(string)
  default = []
}

variable "required_status_checks" {
  type    = map(string)
  default = {}
}

variable "topics" {
  type    = list(string)
  default = []
}

variable "visibility" {
  type    = string
  default = "private"
}

variable "template" {
  type = object({
    owner      = string
    repository = string
  })
  default = {
    owner      = null
    repository = null
  }
}