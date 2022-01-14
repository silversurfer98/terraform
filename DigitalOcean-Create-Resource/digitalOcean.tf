
data "digitalocean_ssh_key" "default" {
  name = "default"
}

# Create a web server
resource "digitalocean_droplet" "myserver" {
  image  = "ubuntu-20-04-x64"
  name   = "test.raghav1618.tech"
  region = "blr1"
  size   = "s-1vcpu-1gb"
  ssh_keys = [data.digitalocean_ssh_key.default.id]
}



## Create a new SSH key
# resource "digitalocean_ssh_key" "default" {
#   name       = "Terraform Example"
#   public_key = file("/Users/terraform/.ssh/id_rsa.pub")
# }

## Create a new Droplet using the SSH key
# resource "digitalocean_droplet" "web" {
#   image    = "ubuntu-18-04-x64"
#   name     = "web-1"
#   region   = "nyc3"
#   size     = "s-1vcpu-1gb"
#   ssh_keys = [digitalocean_ssh_key.default.fingerprint]
# }