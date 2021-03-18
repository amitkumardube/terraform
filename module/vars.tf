// All the variables used in resource.tf file are declared here
// the resource has a type with no default value

variable "network_name" {
  type = string
}

variable "instance_name" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "instance_tags" {
  type = list(any)
}

variable "static_ip" {
  type = string
}

variable "bucket_name" {
  type = string
}

variable "bucket_location" {
  type = string
}