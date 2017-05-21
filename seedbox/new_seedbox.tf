provider "scaleway" {
  region       = "par1"
}

data "scaleway_image" "image" {
  architecture = "x86_64"
  name         = "Torrents"
}

resource "scaleway_server" "seedbox" {
  name  = "seedbox"
  image = "${data.scaleway_image.image.id}"
  type  = "VC1S"
  security_group = "576f9d2e-c7f3-49d2-9657-eb289f9d0e08"
}

resource "scaleway_ip" "ip" {
  server = "${scaleway_server.seedbox.id}"
}
