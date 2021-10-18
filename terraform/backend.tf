terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "rivernate"

    workspaces {
      name = "notesrivernatecom"
    }
  }
}