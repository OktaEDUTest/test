variable "org_name" {}
variable "api_token" {}
variable "base_url" {}

terraform {
  required_providers {
    okta = {
      version = "~> 3.5.0"
      source  = "oktadeveloper/okta"
    }
  }
  required_version = ">= 0.13"
}

provider "okta" {
	org_name = var.org_name
	base_url = var.base_url
	api_token = var.api_token
}

resource "okta_user_schema" "dob_extension" {
	index = "date_of_birth"
	title = "Date of Birth"
	type = "string"
	master = "PROFILE_MASTER"
}
