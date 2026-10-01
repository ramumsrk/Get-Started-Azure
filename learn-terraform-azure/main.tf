terraform {
  required_version = ">= 1.1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
  cloud {
    organization = "First-Organization-Ramu"
    workspaces {
      name = "learn-terraform-azure"
    }
  }  
}

provider "azurerm" {
  features {}
}

# create a resource-group
resource "azurerm_resource_group" "first-resource-group" {
  name     = var.resource_group_name
  location = "india south central"
  tags = {
    CourseName = "Get Started - Azure"
    CourseURL = "https://developer.hashicorp.com/terraform/tutorials/azure-get-started"
  }
}

# create a virtual-network
resource "azurerm_virtual_network" "first-virtual-network" {
  name                = "First-Virtual-Network-Created-With-Terraform"
  location            = "india south central"
  address_space       = ["10.253.253.0/24"]
  resource_group_name = azurerm_resource_group.first-resource-group.name
}