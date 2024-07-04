terraform {
  backend "azurerm" {
    resource_group_name  = "ROOTSEC-TERRAFORM"
    storage_account_name = "rootsecterraform"
    container_name       = "tfstatefile"
    key                  = "dev.terraform.tfstate"
  }
}
resource "azurerm_resource_group" "rg" {
  name     = "ROOTSEC-IAC-GITHUB"
  location = "West Europe"
}

resource "azurerm_storage_account" "stor" {
  name                     = "rootseciacstorage"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
    tags = {
    "mapping_tag" = "85f153b9-8a28-4592-98bc-ff839fd3ad4e"
  }
}

resource "azurerm_storage_container" "con" {
  name                  = "iacstorage"
  storage_account_name  = azurerm_storage_account.stor.name
  container_access_type = "public"
}




