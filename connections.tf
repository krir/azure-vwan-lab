# ── Hub1 Connections (East US) ────────────────────────

# vNet1 → Hub1
resource "azurerm_virtual_hub_connection" "hub1_vnet1" {
  name                      = "Hub1-vNet1"
  virtual_hub_id            = azurerm_virtual_hub.hub1.id
  remote_virtual_network_id = azurerm_virtual_network.vnet1.id
  internet_security_enabled = false
}

# vNet2 → Hub1
resource "azurerm_virtual_hub_connection" "hub1_vnet2" {
  name                      = "Hub1-vNet2"
  virtual_hub_id            = azurerm_virtual_hub.hub1.id
  remote_virtual_network_id = azurerm_virtual_network.vnet2.id
  internet_security_enabled = false
}

# ── Hub2 Connections (West US) ────────────────────────

# vNet3 → Hub2
resource "azurerm_virtual_hub_connection" "hub2_vnet3" {
  name                      = "Hub2-vNet3"
  virtual_hub_id            = azurerm_virtual_hub.hub2.id
  remote_virtual_network_id = azurerm_virtual_network.vnet3.id
  internet_security_enabled = false
}

# vNet4 → Hub2
resource "azurerm_virtual_hub_connection" "hub2_vnet4" {
  name                      = "Hub2-vNet4"
  virtual_hub_id            = azurerm_virtual_hub.hub2.id
  remote_virtual_network_id = azurerm_virtual_network.vnet4.id
  internet_security_enabled = false
}