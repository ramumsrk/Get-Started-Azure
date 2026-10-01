# Review updates to state
```bash
terraform -chdir=/home/ramumsrk/Documents/ata_1_0_TiB/Get-Started-Azure/learn-terraform-azure show
# azurerm_resource_group.first-resource-group:
resource "azurerm_resource_group" "first-resource-group" {
    id       = "/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/First-Resource-Group-Created-With-Terraform"
    location = "indiasouthcentral"
    name     = "First-Resource-Group-Created-With-Terraform"
    tags     = {
        "CourseName" = "Get Started - Azure"
        "CourseURL"  = "https://developer.hashicorp.com/terraform/tutorials/azure-get-started"
    }
}

# azurerm_virtual_network.first-virtual-network:
resource "azurerm_virtual_network" "first-virtual-network" {
    address_space           = [
        "10.253.253.0/24",
    ]
    bgp_community           = null
    dns_servers             = []
    edge_zone               = null
    flow_timeout_in_minutes = 0
    guid                    = "28ded84a-33c8-4a16-92b1-c050929a96b0"
    id                      = "/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/First-Resource-Group-Created-With-Terraform/providers/Microsoft.Network/virtualNetworks/First-Virtual-Network-Created-With-Terraform"
    location                = "indiasouthcentral"
    name                    = "First-Virtual-Network-Created-With-Terraform"
    resource_group_name     = "First-Resource-Group-Created-With-Terraform"
    subnet                  = []
    tags                    = {}
}
```

```sh
terraform -chdir=/home/ramumsrk/Documents/ata_1_0_TiB/Get-Started-Azure/learn-terraform-azure state list
azurerm_resource_group.first-resource-group
azurerm_virtual_network.first-virtual-network
```