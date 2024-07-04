resource "azurerm_storage_container" "BLOB" {
  name                     = "iacblob"
  storage_account_name     = "rootseciacstorage"
  container_access_type    = "private"
}
