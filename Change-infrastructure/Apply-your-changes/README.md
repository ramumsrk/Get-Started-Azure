# Apply your changes
```bash
terraform -chdir=/home/ramumsrk/Documents/ata_1_0_TiB/Get-Started-Azure/learn-terraform-azure fmt
main.tf

terraform -chdir=/home/ramumsrk/Documents/ata_1_0_TiB/Get-Started-Azure/learn-terraform-azure validate
Success! The configuration is valid.
```

```sh
terraform -chdir=/home/ramumsrk/Documents/ata_1_0_TiB/Get-Started-Azure/learn-terraform-azure plan
azurerm_resource_group.first-resource-group: Refreshing state... [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/First-Resource-Group-Created-With-Terraform]

Terraform used the selected providers to generate the
following execution plan. Resource actions are indicated
with the following symbols:
  + create

Terraform will perform the following actions:

  # azurerm_virtual_network.first-virtual-network will be created
  + resource "azurerm_virtual_network" "first-virtual-network" {
      + address_space       = [
          + "10.253.253.0/24",
        ]
      + dns_servers         = (known after apply)
      + guid                = (known after apply)
      + id                  = (known after apply)
      + location            = "indiasouthcentral"
      + name                = "First-Virtual-Network-Created-With-Terraform"
      + resource_group_name = "First-Resource-Group-Created-With-Terraform"
      + subnet              = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

─────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan,
so Terraform can't guarantee to take exactly these
actions if you run "terraform apply" now.
```

```sh
terraform -chdir=/home/ramumsrk/Documents/ata_1_0_TiB/Get-Started-Azure/learn-terraform-azure apply
azurerm_resource_group.first-resource-group: Refreshing state... [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/First-Resource-Group-Created-With-Terraform]

Terraform used the selected providers to generate the
following execution plan. Resource actions are indicated
with the following symbols:
  + create

Terraform will perform the following actions:

  # azurerm_virtual_network.first-virtual-network will be created
  + resource "azurerm_virtual_network" "first-virtual-network" {
      + address_space       = [
          + "10.253.253.0/24",
        ]
      + dns_servers         = (known after apply)
      + guid                = (known after apply)
      + id                  = (known after apply)
      + location            = "indiasouthcentral"
      + name                = "First-Virtual-Network-Created-With-Terraform"
      + resource_group_name = "First-Resource-Group-Created-With-Terraform"
      + subnet              = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

azurerm_virtual_network.first-virtual-network: Creating...
azurerm_virtual_network.first-virtual-network: Creation complete after 7s [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/First-Resource-Group-Created-With-Terraform/providers/Microsoft.Network/virtualNetworks/First-Virtual-Network-Created-With-Terraform]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```

```bash
terraform -chdir=/home/ramumsrk/Documents/ata_1_0_TiB/Get-Started-Azure/learn-terraform-azure state list
azurerm_resource_group.first-resource-group
azurerm_virtual_network.first-virtual-network
```

```sh
terraform -chdir=/home/ramumsrk/Documents/ata_1_0_TiB/Get-Started-Azure/learn-terraform-azure show
# azurerm_resource_group.first-resource-group:
resource "azurerm_resource_group" "first-resource-group" {
    id       = "/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/First-Resource-Group-Created-With-Terraform"
    location = "indiasouthcentral"
    name     = "First-Resource-Group-Created-With-Terraform"
    tags     = {}
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
}
```