# ── STEP 1: Azure Virtual WAN (Figure 12.3) ───────────
resource "azurerm_virtual_wan" "azure_vwan" {
  name                           = "azure-vwan"
  resource_group_name            = azurerm_resource_group.rg.name
  location                       = "Central US"
  type                           = "Standard"
  allow_branch_to_branch_traffic = true
}

# ── STEP 2: Hub1 — East US (Figure 12.4) ──────────────
resource "azurerm_virtual_hub" "hub1" {
  name                = "hub1"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "East US"
  virtual_wan_id      = azurerm_virtual_wan.azure_vwan.id
  address_prefix      = "10.1.0.0/16"
  sku                 = "Standard"
}

# ── STEP 3: Hub2 — West US (Figure 12.5) ──────────────
resource "azurerm_virtual_hub" "hub2" {
  name                = "hub2"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "West US"
  virtual_wan_id      = azurerm_virtual_wan.azure_vwan.id
  address_prefix      = "10.2.0.0/16"
  sku                 = "Standard"
}