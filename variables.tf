// define the variables which got passed through from the enviornment variables
variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "region" {}

variable "compartment_ocid" {}
variable "ssh_public_key" {}
variable "ssh_private_key" {}


# define the number of instances to deploy
variable "NumInstances" {
  default = "3"
}

# define the shape of the instances
variable "instance_shape" {
  default = "VM.Standard2.1"
}