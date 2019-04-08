module static_root_domain {
  source           = "github.com/rivernate/terraform_modules//s3_static_sub_domain"
  root_domain_name = "rivernate.com"
  subdomain        = "notes.rivernate.com"
}
