resource "azurerm_resource_group" "main" {
  name     = "rg-aks-with-nat"
  location = var.location
}
