terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
    }
  }
}

provider "oci" {
}

resource "oci_core_vcn" "internal" {
  dns_label      = "internal"
  cidr_block     = "172.16.0.0/20"
  compartment_id = "ocid1.compartment.oc1..aaaaaaaacmnxfihtc6c6rwwadcm2qyxwuqcsbh4nsqb4drzekvqgyqxyamfq"
  display_name   = "Damiths TEST VCN"
}
