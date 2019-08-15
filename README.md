# practice network in oci

This is a practice for creating network enviorments with terraform and oracle cloud infrastructure for business usage. In the following example a virtual cloud network with subnets, a routing table and a internet gateway should be created through the `network.tf`. 

First the environment must be set up. Therefor the env-vars.example should be copied to env-vars and filled out with all important variabled (<VARIABEL_NAME>). Afterwards the env-vars could be activated with `source env-vars` which should be done before executing terraform.
Secondly terraform must be initilized with `terraform init` in order to download all required dependencies.