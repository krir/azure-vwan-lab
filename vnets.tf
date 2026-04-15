# ── vNet1: East US ────────────────────────────────────
resource "azurerm_virtual_network" "vnet1" {
  name                = "vNet1"
  location            = "East US"
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["192.168.0.0/16"]
}

resource "azurerm_subnet" "vnet1_sub" {
  name                 = "vNet1sub1"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = ["192.168.1.0/24"]
}

# ── vNet2: East US 2 ──────────────────────────────────
resource "azurerm_virtual_network" "vnet2" {
  name                = "vNet2"
  location            = "East US"
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.10.0.0/16"]
}

resource "azurerm_subnet" "vnet2_sub" {
  name                 = "vNet2sub1"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet2.name
  address_prefixes     = ["10.10.10.0/24"]
}

# ── vNet3: West US ────────────────────────────────────
resource "azurerm_virtual_network" "vnet3" {
  name                = "vNet3"
  location            = "West US"
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["172.16.0.0/16"]
}

resource "azurerm_subnet" "vnet3_sub" {
  name                 = "vNet3sub1"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet3.name
  address_prefixes     = ["172.16.16.0/24"]
}

# ── vNet4: West US 2 ──────────────────────────────────
resource "azurerm_virtual_network" "vnet4" {
  name                = "vNet4"
  location            = "West US 2"
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.20.0.0/16"]
}

resource "azurerm_subnet" "vnet4_sub" {
  name                 = "vNet4sub1"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet4.name
  address_prefixes     = ["10.20.20.0/24"]
}