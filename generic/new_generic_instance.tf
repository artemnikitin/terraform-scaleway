provider "scaleway" {
  region       = "par1"
}

data "scaleway_image" "image" {
  architecture = "x86_64"
  name         = "Ubuntu Xenial"
}

resource "scaleway_ip" "ip" {
  server = "${scaleway_server.instance.id}"
}

resource "scaleway_server" "instance" {
  name  = "new generic instance"
  image = "${data.scaleway_image.image.id}"
  type  = "VC1S"
}
