# Terraform Module: Github Repository

Sets up a new github repository with branch protection.

[![Snyk Golang Scan](https://github.com/mikesupertrampster-corp/terraform-module-github-repository/actions/workflows/snyk.yml/badge.svg)](https://github.com/mikesupertrampster-corp/terraform-module-github-repository/actions/workflows/snyk.yml) [![gitleaks](https://github.com/mikesupertrampster-corp/terraform-module-github-repository/actions/workflows/gitleaks.yml/badge.svg)](https://github.com/mikesupertrampster-corp/terraform-module-github-repository/actions/workflows/gitleaks.yml)

## Usage

### Requirements

| Name | Version |
|------|---------|
| github | >= 4.6.0 |

### Resources

| Name | Type |
|------|------|
| [github_repository](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_branch_default](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_default) | resource |
| [branch_protection](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection) | resource |
