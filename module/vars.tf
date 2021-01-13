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
    type = list
}