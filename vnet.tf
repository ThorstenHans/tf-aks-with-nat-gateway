resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-aks-with-nat-gateway"
  address_space       = [var.vnet.cird]
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
}

resource "azurerm_subnet" "cluster" {
  name                 = "cluster"
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name  = azurerm_resource_group.main.name
  address_prefixes     = [var.vnet.sn_cluster_cird]
}
