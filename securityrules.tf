resource "oci_core_security_list" "test_security_list" {
    #Required
    compartment_id = "${var.compartment_id}"
    vcn_id = "${oci_core_vcn.test_vcn.id}"

    #Optional
    defined_tags = {"Operations.CostCenter"= "42"}
    display_name = "${var.security_list_display_name}"
    egress_security_rules {
        #Required
        destination = "${var.security_list_egress_security_rules_destination}"
        protocol = "${var.security_list_egress_security_rules_protocol}"

        #Optional
        destination_type = "${var.security_list_egress_security_rules_destination_type}"
        icmp_options {
            #Required
            type = "${var.security_list_egress_security_rules_icmp_options_type}"

            #Optional
            code = "${var.security_list_egress_security_rules_icmp_options_code}"
        }
        stateless = "${var.security_list_egress_security_rules_stateless}"
        tcp_options {

            #Optional
            max = "${var.security_list_egress_security_rules_tcp_options_destination_port_range_max}"
            min = "${var.security_list_egress_security_rules_tcp_options_destination_port_range_min}"
            source_port_range {
                #Required
                max = "${var.security_list_egress_security_rules_tcp_options_source_port_range_max}"
                min = "${var.security_list_egress_security_rules_tcp_options_source_port_range_min}"
            }
        }
        udp_options {

            #Optional
            max = "${var.security_list_egress_security_rules_udp_options_destination_port_range_max}"
            min = "${var.security_list_egress_security_rules_udp_options_destination_port_range_min}"
            source_port_range {
                #Required
                max = "${var.security_list_egress_security_rules_udp_options_source_port_range_max}"
                min = "${var.security_list_egress_security_rules_udp_options_source_port_range_min}"
            }
        }
    }
    freeform_tags = {"Department"= "Finance"}
    ingress_security_rules {
        #Required
        protocol = "${var.security_list_ingress_security_rules_protocol}"
        source = "${var.security_list_ingress_security_rules_source}"

        #Optional
        icmp_options {
            #Required
            type = "${var.security_list_ingress_security_rules_icmp_options_type}"

            #Optional
            code = "${var.security_list_ingress_security_rules_icmp_options_code}"
        }
        source_type = "${var.security_list_ingress_security_rules_source_type}"
        stateless = "${var.security_list_ingress_security_rules_stateless}"
        tcp_options {

            #Optional
            max = "${var.security_list_ingress_security_rules_tcp_options_destination_port_range_max}"
            min = "${var.security_list_ingress_security_rules_tcp_options_destination_port_range_min}"
            source_port_range {
                #Required
                max = "${var.security_list_ingress_security_rules_tcp_options_source_port_range_max}"
                min = "${var.security_list_ingress_security_rules_tcp_options_source_port_range_min}"
            }
        }
        udp_options {

            #Optional
            max = "${var.security_list_ingress_security_rules_udp_options_destination_port_range_max}"
            min = "${var.security_list_ingress_security_rules_udp_options_destination_port_range_min}"
            source_port_range {
                #Required
                max = "${var.security_list_ingress_security_rules_udp_options_source_port_range_max}"
                min = "${var.security_list_ingress_security_rules_udp_options_source_port_range_min}"
            }
        }
    }
}
