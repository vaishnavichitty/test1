provider "azurerm" {
                subscription_id = "ff6e05ff-b300-4499-8919-c44b7252fffc"
                tenant_id          = "b989e860-17da-4832-b5aa-1d82372ec864"
                client_id           = "2fb5a220-8f07-4317-80d9-06a9fb895c26"
                features {}
}

resource "azurerm_resource_group" "RS1" {
  name     = "FirstRS1"
  location = "US - West"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "Vnet1" {
  name                = "Firstvnet1"
  resource_group_name = azurerm_resource_group.RS1.name
  location            = azurerm_resource_group.RS1.location
  address_space       = ["10.0.0.0/16"]
}