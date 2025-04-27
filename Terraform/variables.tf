# main-vars.tf
############################################
# Compartments
############################################

variable "compartment_id" {
  description = "The OCID of the parent compartment where the resources will be created."
  type        = string
}

variable "compartment_name" {
  description = "Compartment Name"
  type        = string
  default     = "itsrams-compartment"
}

variable "compartment_description" {
  description = "Compartment Description"
  type        = string
  default     = "test-compartment description"
}

############################################
# VCN
############################################

variable "vcn1" {
  description = "The details of VCN1."
  default = {
    cidr_blocks : ["10.23.0.0/20"]
    display_name : "vcn01"
  }
}

############################################
# Public Subnet, Route Table, and Internet Gateway
############################################

variable "subnetA_pub" {
  description = "The details of the subnet"
  default = {
    cidr_block : "10.23.11.0/24"
    display_name : "IC_pub_snet-A"
    is_public : true
    route_table : {
      display_name = "routeTable-Apub"
      description  = "routeTable-Apub"
    }
  }
}

variable "internet_gateway_A" {
  description = "The details of the internet gateway"
  default = {
    display_name : "IC_IG-A"
    ig_destination = "0.0.0.0/0"
  }
}

############################################
# Compute Instance
############################################

variable "ic_pub_vm_A" {
  description = "The details of the compute instance"
  default = {
    display_name : "IC_pub_vm-A"
    assign_public_ip : true
    availability_domain : "YpMq-AP-HYDERABAD-1-AD-1"
    image_ocid : "ocid1.image.oc1.ap-hyderabad-1.anuhsljrvdcx4jacw54ts4jzctsloajhrxk6mvkg223vvlhpyqmdp7sfdmuq"
    shape : {
      name          = "VM.Standard.E2.1.Micro"
      ocpus         = 1
      memory_in_gbs = 1
    }
    ssh_authorized_keys = ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDGbwLxU3/D9olV1jKHuy+OChGWh9TL1vM3KgJI3U/3+7nQJf5pjeJAjmYeiC/Q9AggrUA3pYGC4ojD9gBkHO1z3aa8mAQtCfUNYBZbuTaZpG7NirbuTmEh7h1I6/ZYsJ+NW/TP1s0d+NX0FPQ6P1c+xxdtevUxjRBOtA8+iJx50xxbG5bThIDtSdvYSW0ojzDNBIeuC4kTPyAltbDijTP5FSSiw/RDtb+p2ls9k6P4G7JYjlU/nMfek54f5DjWNozk+iPRWSBbZ8PawBBhLgRPazLcDBpyHTSWoxOE++1FTcEEutZWIjEzlJPGnHUdEsUUog8HIsmmtougvGu6mNGx ssh-key-2025-04-26"]
  }
}