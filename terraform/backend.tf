terraform {
  backend "s3" {
    bucket = "terraform.rivernate.com"
    key    = "rivernate.com/notes_website"
    region = "us-west-2"
  }
}
