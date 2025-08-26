resource "azurerm_resource_group" "rg1" {
  name     = "pipeline"
  location = "East US"
  
}
resource "azurerm_storage_account" "stg1" {
    name                     = "pipelinestorage"
    resource_group_name      = "pipeline"
    location                 = "East US"
    account_tier             = "Standard"
    account_replication_type = "LRS"
}