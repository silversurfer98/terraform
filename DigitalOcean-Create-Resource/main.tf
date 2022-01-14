terraform {
  required_providers {
    cloudflare = {
        source = "cloudflare/cloudflare"
        version = "~> 3.0"
    }
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

# Declare Variables
# ---
# TODO: Create a yourfile.auto.tfvars file in the project directory and add your variables in it.
#   Example:
#   cloudflare_email = "youremail@yourmail.com"
#   cloudflare_api_key = "your-api-key"
#   civo_token = "your-token"

variable "cloudflare_email" {}
variable "cloudflare_api_key" {}
variable "DO_token" {}

# Set Default Provider Settings
# ---

provider "cloudflare" {
  email = var.cloudflare_email
  api_key =  var.cloudflare_api_key
}

provider "digitalocean" {
  token = var.DO_token
}