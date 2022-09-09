variable "location" {
  type        = string
  default     = "germanywestcentral"
  description = "The region where the resources will be created."
}

variable "vnet" {
  type = object({
    cird            = string
    sn_cluster_cird = string
  })
  default = {
    cird            = "10.240.0.0/16"
    sn_cluster_cird = "10.240.0.0/22"
  }
  description = "The VNET and subnet configuration."
}
