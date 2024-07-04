resource "azurerm_storage_container" "BLOB" {
  name                     = "iacblob"
  storage_account_name     = var.sname
  container_access_type    = "private"
}
