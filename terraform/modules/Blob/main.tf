resource azurerm_storage_container "myblobs" {
  name                  = "myblobs"
  storage_account_name  = "rootseciacstorage"
  container_access_type = "private"
}
