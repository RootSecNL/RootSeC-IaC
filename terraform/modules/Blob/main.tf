resource "azurerm_storage_container" "BLOB" {
  name                     = var.bname
  storage_account_name     = var.sname
  container_access_type    = "public"
  
}