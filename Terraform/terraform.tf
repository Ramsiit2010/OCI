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
    address = "https://objectstorage.ap-hyderabad-1.oraclecloud.com/p/xj6uDXY5KYtZT6OFlu5Ke1C6tJm-0vaDj5aZPHWgsB6nQtOkWD8QvmA3w7zkfZE5/n/axb7k3ay4evk/b/myocibucket/o/terraform.tfstate"
    update_method = "PUT"
  }
}