resource "yandex_vpc_network" "diplom-net" {
  name = "app-net"
}

resource "yandex_vpc_subnet" "diplom-subnet-zones" {
  count = 3
  name = "subnet-${var.subnet-zones[count.index]}"
  zone = "${var.subnet-zones[count.index]}"
  network_id = "${yandex_vpc_network.diplom-net.id}"
  v4_cidr_blocks = [ "${var.cidr.cidr[count.index]}" ]
}