# ── VM1 in vNet1 (East US) ────────────────────────────
resource "azurerm_network_interface" "nic1" {
  name                = "nic-vm1"
  location            = "East US"
  resource_group_name = azurerm_resource_group.rg.name
  ip_configuration {
    name                          = "ipconfig1"
    subnet_id                     = azurerm_subnet.vnet1_sub.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "vm1" {
  name                            = "VM1"
  location                        = "East US"
  resource_group_name             = azurerm_resource_group.rg.name
  network_interface_ids           = [azurerm_network_interface.nic1.id]
  size                            = "Standard_D2as_v5"
  admin_username                  = "azureuser"
  admin_password                  = "P@ssword1234!"
  disable_password_authentication = false
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts-gen2"
    version   = "latest"
  }
}

# ── VM2 in vNet2 (East US) ────────────────────────────
resource "azurerm_network_interface" "nic2" {
  name                = "nic-vm2"
  location            = "East US"
  resource_group_name = azurerm_resource_group.rg.name
  ip_configuration {
    name                          = "ipconfig1"
    subnet_id                     = azurerm_subnet.vnet2_sub.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "vm2" {
  name                            = "VM2"
  location                        = "East US"
  resource_group_name             = azurerm_resource_group.rg.name
  network_interface_ids           = [azurerm_network_interface.nic2.id]
  size                            = "Standard_D2as_v5"
  admin_username                  = "azureuser"
  admin_password                  = "P@ssword1234!"
  disable_password_authentication = false
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts-gen2"
    version   = "latest"
  }
}

# ── VM3 in vNet3 (West US) ────────────────────────────
resource "azurerm_network_interface" "nic3" {
  name                = "nic-vm3"
  location            = "West US"
  resource_group_name = azurerm_resource_group.rg.name
  ip_configuration {
    name                          = "ipconfig1"
    subnet_id                     = azurerm_subnet.vnet3_sub.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "vm3" {
  name                            = "VM3"
  location                        = "West US"
  resource_group_name             = azurerm_resource_group.rg.name
  network_interface_ids           = [azurerm_network_interface.nic3.id]
  size                            = "Standard_D2as_v5"
  admin_username                  = "azureuser"
  admin_password                  = "P@ssword1234!"
  disable_password_authentication = false
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts-gen2"
    version   = "latest"
  }
}

# ── VM4 in vNet4 (West US 2) ──────────────────────────
resource "azurerm_network_interface" "nic4" {
  name                = "nic-vm4"
  location            = "West US 2"
  resource_group_name = azurerm_resource_group.rg.name
  ip_configuration {
    name                          = "ipconfig1"
    subnet_id                     = azurerm_subnet.vnet4_sub.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "vm4" {
  name                            = "VM4"
  location                        = "West US 2"
  resource_group_name             = azurerm_resource_group.rg.name
  network_interface_ids           = [azurerm_network_interface.nic4.id]
  size                            = "Standard_D2as_v5"
  admin_username                  = "azureuser"
  admin_password                  = "P@ssword1234!"
  disable_password_authentication = false
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts-gen2"
    version   = "latest"
  }
}
  