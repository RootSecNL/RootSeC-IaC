resource "azurerm_storage_account" "STA" {
  name                     = var.sname
  resource_group_name      = var.rgname
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    "mapping_tag" = "c600d5b1-a436-4f3d-87e9-9e2bb75f25a5"
  }
}
