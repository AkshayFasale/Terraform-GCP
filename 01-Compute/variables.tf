variable "project_id" {
  description = "The GCP Project ID"
  type        = string
}
variable "region" {
  description = "GCP region for resources"
  type        = string
}
variable "zone" {
  description = "GCP zone for the Compute Engine instance"
  type        = string
}
variable "instance_name" {
  description = "Instance name"
  type        = string
}

variable "machine_type" {
  description = "Machine type for the Compute Engine instance"
  type        = string
}
