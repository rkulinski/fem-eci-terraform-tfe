locals {
  project = {
    "fem-eci-project" = {
      description = "Example"
    }
  }
  workspace = {
    "fem-eci-tfe" = {
      description         = "Example description"
      execution_mode      = "remote"
      project_id          = module.project["fem-eci-project"].id
      vcs_repo_identifier = "${var.github_organization_name}/fem-eci-terraform-tfe"
    }
    "fem-eci-github" = {
      description         = "Example description"
      execution_mode      = "local"
      project_id          = module.project["fem-eci-project"].id
      vcs_repo_identifier = "${var.github_organization_name}/fem-eci-terraform-github"
    }
  }
}