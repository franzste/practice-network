// Copyright (c) 2017, 2019, Oracle and/or its affiliates. All rights reserved.

resource "oci_core_vcn" "Practice_VCN" {
  cidr_block     = "10.1.0.0/16"
  compartment_id = "${var.compartment_ocid}"
  display_name   = "Practice_VCN"
  dns_label      = "practicevcn"
}


resource "oci_core_subnet" "PracticeSubnet" {
  availability_domain = "${data.oci_identity_availability_domain.ad.name}" # comming from datasources.tf
  cidr_block          = "10.1.20.0/24"
  display_name        = "PracticeSubnet"
  dns_label           = "practicesubnet"
  #security_list_ids   = ["${oci_core_vcn.Practice_VCN.default_security_list_id}"]
  compartment_id      = "${var.compartment_ocid}"
  vcn_id              = "${oci_core_vcn.Practice_VCN.id}"
  route_table_id      = "${oci_core_route_table.PracticeRT.id}"
  dhcp_options_id     = "${oci_core_vcn.Practice_VCN.default_dhcp_options_id}"
}

resource "oci_core_internet_gateway" "PracticeGW" {
  compartment_id = "${var.compartment_ocid}"
  display_name   = "PracticeIG"
  vcn_id         = "${oci_core_vcn.Practice_VCN.id}"
}

resource "oci_core_route_table" "PracticeRT" {
  compartment_id = "${var.compartment_ocid}"
  vcn_id         = "${oci_core_vcn.Practice_VCN.id}"
  display_name   = "PracticeRouteTable"

  route_rules {
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = "${oci_core_internet_gateway.PracticeGW.id}"
  }
}
