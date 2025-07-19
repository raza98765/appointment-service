terraform {
      required_providers {
        azurerm = {
          source  = "hashicorp/azurerm"
          version = "4.37.0"
        }
      }
    }

    provider "azurerm" {
      features {}
      subscription_id = "90de0c98-2d25-4094-a834-32b29fdf8003"
    }
