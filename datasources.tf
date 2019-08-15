data "oci_identity_availability_domain" "ad" {
  compartment_id = "${var.tenancy_ocid}"
  ad_number      = 1
}

/*
data "oci_core_instance_devices" "TFInstanceDevices" {
  count       = "${var.NumInstances}"
  instance_id = "${oci_core_instance.TFInstance.*.id[count.index]}"
}
*/