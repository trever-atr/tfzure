terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.32"
    }
  }

  required_version = ">= 1.13"
}
