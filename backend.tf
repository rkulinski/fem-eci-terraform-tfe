terraform {
  cloud {
    organization = "rkstudio"

    workspaces {
      name = "fem-eci-tfe"
    }
  }
}