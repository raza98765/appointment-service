
resource "azurerm_resource_group" "example" {
  name     = "ABC"
  location = "East Us"
}

resource "azurerm_kubernetes_cluster" "example" {
  name                = "HCL-aks1"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  dns_prefix          = "HCLaks1"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Test"
  }
}
