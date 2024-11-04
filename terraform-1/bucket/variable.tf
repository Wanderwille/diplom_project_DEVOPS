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

variable "zone" {
  default = "ru-central1-a"  
}

variable "yandex_cloud_auth" {
  default = ""
  sensitive = true
}