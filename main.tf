resource "azurerm_resource_group" "rg" {
  name     = "rg-1"
  location = "central India"
}

resource "azurerm_resource_group" "rg1" {
  name     = "rg-2"
  location = "central India"
}
resource "azurerm_storage_account" "storageaccount" {
  name                     = "stgaccountnew"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}