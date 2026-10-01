# Destroy
```sh
terraform -chdir=/home/ramumsrk/Documents/ata_1_0_TiB/Get-Started-Azure/learn-terraform-azure plan -destroy
azurerm_resource_group.first-resource-group: Refreshing state... [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/First-Resource-Group-Created-With-Terraform]
azurerm_virtual_network.first-virtual-network: Refreshing state... [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/First-Resource-Group-Created-With-Terraform/providers/Microsoft.Network/virtualNetworks/First-Virtual-Network-Created-With-Terraform]

Terraform used the selected providers to generate the
following execution plan. Resource actions are indicated
with the following symbols:
  - destroy

Terraform will perform the following actions:

  # azurerm_resource_group.first-resource-group will be destroyed
  - resource "azurerm_resource_group" "first-resource-group" {
      - id       = "/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/First-Resource-Group-Created-With-Terraform" -> null
      - location = "indiasouthcentral" -> null
      - name     = "First-Resource-Group-Created-With-Terraform" -> null
      - tags     = {
          - "CourseName" = "Get Started - Azure"
          - "CourseURL"  = "https://developer.hashicorp.com/terraform/tutorials/azure-get-started"
        } -> null
    }

  # azurerm_virtual_network.first-virtual-network will be destroyed
  - resource "azurerm_virtual_network" "first-virtual-network" {
      - address_space           = [
          - "10.253.253.0/24",
        ] -> null
      - dns_servers             = [] -> null
      - flow_timeout_in_minutes = 0 -> null
      - guid                    = "28ded84a-33c8-4a16-92b1-c050929a96b0" -> null
      - id                      = "/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/First-Resource-Group-Created-With-Terraform/providers/Microsoft.Network/virtualNetworks/First-Virtual-Network-Created-With-Terraform" -> null
      - location                = "indiasouthcentral" -> null
      - name                    = "First-Virtual-Network-Created-With-Terraform" -> null
      - resource_group_name     = "First-Resource-Group-Created-With-Terraform" -> null
      - subnet                  = [] -> null
      - tags                    = {} -> null
        # (2 unchanged attributes hidden)
    }

Plan: 0 to add, 0 to change, 2 to destroy.

─────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan,
so Terraform can't guarantee to take exactly these
actions if you run "terraform apply" now.
```

```bash
terraform -chdir=/home/ramumsrk/Documents/ata_1_0_TiB/Get-Started-Azure/learn-terraform-azure apply -destroy
azurerm_resource_group.first-resource-group: Refreshing state... [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/First-Resource-Group-Created-With-Terraform]
azurerm_virtual_network.first-virtual-network: Refreshing state... [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/First-Resource-Group-Created-With-Terraform/providers/Microsoft.Network/virtualNetworks/First-Virtual-Network-Created-With-Terraform]

Terraform used the selected providers to generate the
following execution plan. Resource actions are indicated
with the following symbols:
  - destroy

Terraform will perform the following actions:

  # azurerm_resource_group.first-resource-group will be destroyed
  - resource "azurerm_resource_group" "first-resource-group" {
      - id       = "/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/First-Resource-Group-Created-With-Terraform" -> null
      - location = "indiasouthcentral" -> null
      - name     = "First-Resource-Group-Created-With-Terraform" -> null
      - tags     = {
          - "CourseName" = "Get Started - Azure"
          - "CourseURL"  = "https://developer.hashicorp.com/terraform/tutorials/azure-get-started"
        } -> null
    }

  # azurerm_virtual_network.first-virtual-network will be destroyed
  - resource "azurerm_virtual_network" "first-virtual-network" {
      - address_space           = [
          - "10.253.253.0/24",
        ] -> null
      - dns_servers             = [] -> null
      - flow_timeout_in_minutes = 0 -> null
      - guid                    = "28ded84a-33c8-4a16-92b1-c050929a96b0" -> null
      - id                      = "/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/First-Resource-Group-Created-With-Terraform/providers/Microsoft.Network/virtualNetworks/First-Virtual-Network-Created-With-Terraform" -> null
      - location                = "indiasouthcentral" -> null
      - name                    = "First-Virtual-Network-Created-With-Terraform" -> null
      - resource_group_name     = "First-Resource-Group-Created-With-Terraform" -> null
      - subnet                  = [] -> null
      - tags                    = {} -> null
        # (2 unchanged attributes hidden)
    }

Plan: 0 to add, 0 to change, 2 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

azurerm_virtual_network.first-virtual-network: Destroying... [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/First-Resource-Group-Created-With-Terraform/providers/Microsoft.Network/virtualNetworks/First-Virtual-Network-Created-With-Terraform]
azurerm_virtual_network.first-virtual-network: Still destroying... [id=/subscriptions/<Second-Azure-Subscription-2>...Virtual-Network-Created-With-Terraform, 00m10s elapsed]
azurerm_virtual_network.first-virtual-network: Destruction complete after 11s
azurerm_resource_group.first-resource-group: Destroying... [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/First-Resource-Group-Created-With-Terraform]
azurerm_resource_group.first-resource-group: Still destroying... [id=/subscriptions/<Second-Azure-Subscription-2>...-Resource-Group-Created-With-Terraform, 00m10s elapsed]
azurerm_resource_group.first-resource-group: Destruction complete after 17s

Apply complete! Resources: 0 added, 0 changed, 2 destroyed.
```