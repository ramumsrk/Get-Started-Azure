# Update your Terraform configuration with your variables
```bash
terraform -chdir=/home/ramumsrk/Documents/ata_1_0_TiB/Get-Started-Azure/learn-terraform-azure plan

Terraform used the selected providers to generate the
following execution plan. Resource actions are indicated
with the following symbols:
  + create

Terraform will perform the following actions:

  # azurerm_resource_group.first-resource-group will be created
  + resource "azurerm_resource_group" "first-resource-group" {
      + id       = (known after apply)
      + location = "indiasouthcentral"
      + name     = "Second-Resource-Group-Created-With-Terraform"
      + tags     = {
          + "CourseName" = "Get Started - Azure"
          + "CourseURL"  = "https://developer.hashicorp.com/terraform/tutorials/azure-get-started"
        }
    }

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
      + resource_group_name = "Second-Resource-Group-Created-With-Terraform"
      + subnet              = (known after apply)
    }

Plan: 2 to add, 0 to change, 0 to destroy.

─────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan,
so Terraform can't guarantee to take exactly these
actions if you run "terraform apply" now.
```

```sh
terraform -chdir=/home/ramumsrk/Documents/ata_1_0_TiB/Get-Started-Azure/learn-terraform-azure apply

Terraform used the selected providers to generate the
following execution plan. Resource actions are indicated
with the following symbols:
  + create

Terraform will perform the following actions:

  # azurerm_resource_group.first-resource-group will be created
  + resource "azurerm_resource_group" "first-resource-group" {
      + id       = (known after apply)
      + location = "indiasouthcentral"
      + name     = "Second-Resource-Group-Created-With-Terraform"
      + tags     = {
          + "CourseName" = "Get Started - Azure"
          + "CourseURL"  = "https://developer.hashicorp.com/terraform/tutorials/azure-get-started"
        }
    }

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
      + resource_group_name = "Second-Resource-Group-Created-With-Terraform"
      + subnet              = (known after apply)
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

azurerm_resource_group.first-resource-group: Creating...
azurerm_resource_group.first-resource-group: Creation complete after 9s [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/Second-Resource-Group-Created-With-Terraform]
azurerm_virtual_network.first-virtual-network: Creating...
azurerm_virtual_network.first-virtual-network: Creation complete after 5s [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/Second-Resource-Group-Created-With-Terraform/providers/Microsoft.Network/virtualNetworks/First-Virtual-Network-Created-With-Terraform]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.
```

```sh
terraform -chdir=/home/ramumsrk/Documents/ata_1_0_TiB/Get-Started-Azure/learn-terraform-azure apply -var "resource_group_name=Third-Resource-Group-Created-With-Terraform"
azurerm_resource_group.first-resource-group: Refreshing state... [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/Second-Resource-Group-Created-With-Terraform]
azurerm_virtual_network.first-virtual-network: Refreshing state... [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/Second-Resource-Group-Created-With-Terraform/providers/Microsoft.Network/virtualNetworks/First-Virtual-Network-Created-With-Terraform]

Terraform used the selected providers to generate the
following execution plan. Resource actions are indicated
with the following symbols:
-/+ destroy and then create replacement

Terraform will perform the following actions:

  # azurerm_resource_group.first-resource-group must be replaced
-/+ resource "azurerm_resource_group" "first-resource-group" {
      ~ id       = "/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/Second-Resource-Group-Created-With-Terraform" -> (known after apply)
      ~ name     = "Second-Resource-Group-Created-With-Terraform" -> "Third-Resource-Group-Created-With-Terraform" # forces replacement
        tags     = {
            "CourseName" = "Get Started - Azure"
            "CourseURL"  = "https://developer.hashicorp.com/terraform/tutorials/azure-get-started"
        }
        # (1 unchanged attribute hidden)
    }

  # azurerm_virtual_network.first-virtual-network must be replaced
-/+ resource "azurerm_virtual_network" "first-virtual-network" {
      ~ dns_servers             = [] -> (known after apply)
      - flow_timeout_in_minutes = 0 -> null
      ~ guid                    = "c835d7dc-365f-43eb-95d7-2a92bffbdcdb" -> (known after apply)
      ~ id                      = "/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/Second-Resource-Group-Created-With-Terraform/providers/Microsoft.Network/virtualNetworks/First-Virtual-Network-Created-With-Terraform" -> (known after apply)
        name                    = "First-Virtual-Network-Created-With-Terraform"
      ~ resource_group_name     = "Second-Resource-Group-Created-With-Terraform" -> "Third-Resource-Group-Created-With-Terraform" # forces replacement
      ~ subnet                  = [] -> (known after apply)
      - tags                    = {} -> null
        # (4 unchanged attributes hidden)
    }

Plan: 2 to add, 0 to change, 2 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

azurerm_virtual_network.first-virtual-network: Destroying... [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/Second-Resource-Group-Created-With-Terraform/providers/Microsoft.Network/virtualNetworks/First-Virtual-Network-Created-With-Terraform]
azurerm_virtual_network.first-virtual-network: Still destroying... [id=/subscriptions/<Second-Azure-Subscription-2>...Virtual-Network-Created-With-Terraform, 00m10s elapsed]
azurerm_virtual_network.first-virtual-network: Destruction complete after 12s
azurerm_resource_group.first-resource-group: Destroying... [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/Second-Resource-Group-Created-With-Terraform]
azurerm_resource_group.first-resource-group: Still destroying... [id=/subscriptions/<Second-Azure-Subscription-2>...-Resource-Group-Created-With-Terraform, 00m10s elapsed]
azurerm_resource_group.first-resource-group: Destruction complete after 17s
azurerm_resource_group.first-resource-group: Creating...
azurerm_resource_group.first-resource-group: Creation complete after 5s [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/Third-Resource-Group-Created-With-Terraform]
azurerm_virtual_network.first-virtual-network: Creating...
azurerm_virtual_network.first-virtual-network: Creation complete after 4s [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/Third-Resource-Group-Created-With-Terraform/providers/Microsoft.Network/virtualNetworks/First-Virtual-Network-Created-With-Terraform]

Apply complete! Resources: 2 added, 0 changed, 2 destroyed.
```