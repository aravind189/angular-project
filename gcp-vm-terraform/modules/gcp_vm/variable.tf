variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

variable "zone" {
  description = "GCP availability zone"
  type        = string
}

variable "instance_name" {
  description = "Name of the virtual machine"
  type        = string
}

variable "machine_type" {
  description = "GCP Machine type"
  type        = string
  default     = "e2-medium"
}

variable "image" {
  description = "OS Image for the VM"
  type        = string
  default     = "ubuntu-os-cloud/ubuntu-2004-lts"
}

