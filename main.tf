provider "azurerm" {
  features {}
  subscription_id = "669b5894-46d4-46f2-95e2-0ff1bfd6d3b3"
}



# Define a Storage Account and Container 
resource "azurerm_storage_account" "example_storage" {
  name                     = "saputoinventorystorage"
  resource_group_name      = "lean-dev"  
  location                 = "Canada Central"  
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "example_container" {
  name                  = "inventory-reports"
  storage_account_name  = azurerm_storage_account.example_storage.name
  container_access_type = "private"
}



