variable "zone_id" {}

resource "cloudflare_record" "myserver" {
  zone_id = var.zone_id
  name    = "test.raghav1618.tech"
  value   = digitalocean_droplet.myserver.ipv4_address
  type    = "A"
  proxied = false
}