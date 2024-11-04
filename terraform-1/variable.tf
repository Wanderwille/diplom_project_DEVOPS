# Заменить на ID своего облака
# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_cloud_id" {
  default = "b1gb93lpnjqmrui5gm09"
}

# Заменить на Folder своего облака
# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_folder_id" {
  default = "b1go039uunbrcvnajpba"
}

variable "yandex_cloud_auth" {
  default = ""
  sensitive = true
}

variable "subnet-zones" {
  type = list(string)
  default = [ "ru-central1-a", "ru-central1-b", "ru-central1-d" ]
}

variable "cidr" {
  type = map(list(string))
  default = {
    "cidr" = [ "10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24" ]
  }
}

variable "metadata_ssh" {
  description = "metadata for all vms"
  type        = map(string)
  default     = {
    serial-port-enable = "1"
    ssh-keys          = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILrmmjE2SF5JJsS9GChvmOkBc0uHHkuhHoG9b8zk1hZ0 root@User"
  }
}

variable "Linux" {
  default = "fd8k2ed4jspu35gfde1u"
}