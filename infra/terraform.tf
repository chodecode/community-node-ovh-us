terraform {
  required_providers {
    ovh = {
      source  = "ovh/ovh"
      version = "0.32.0"
    }
  }
}
  
provider "ovh" {
  endpoint = "ovh-us"
}
