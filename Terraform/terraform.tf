# terraform.tf
terraform {
  required_providers {
    oci = {
      source  = "hashicorp/oci"
      version = ">= 5.0.0"
    }
  }
}


terraform {
  backend "http" {
    address = "https://objectstorage.ap-hyderabad-1.oraclecloud.com/p/GdFSwKubRE6byMpS3Q-f-JqMW9U8OA83JupNSJjGM9NfkC5jmO9QGcc24CHYjZIt/n/axb7k3ay4evk/b/myocibucket/o/myoic.tfstate"
    update_method = "PUT"
  }
}