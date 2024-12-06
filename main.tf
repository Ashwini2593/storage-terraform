# Configure the Azure provider
provider "azurerm" {
  features {}
  subscription_id = "3a72be92-287b-4f1e-840a-5e3e71100139"
  resource_provider_registrations = "none"
}
resource "azurerm_storage_account" "storageaccountrefname01" {
  name                     = "ashwinistorage011"
  resource_group_name      = "rg-aztraining-cat-uk"
  location                 = "UK South"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "test"
  }
}
