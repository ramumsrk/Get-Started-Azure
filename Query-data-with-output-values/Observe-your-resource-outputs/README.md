# Observe your resource outputs
```bash
terraform -chdir=/home/ramumsrk/Documents/ata_1_0_TiB/Get-Started-Azure/learn-terraform-azure apply
azurerm_resource_group.first-resource-group: Refreshing state... [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/Third-Resource-Group-Created-With-Terraform]
azurerm_virtual_network.first-virtual-network: Refreshing state... [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/Third-Resource-Group-Created-With-Terraform/providers/Microsoft.Network/virtualNetworks/First-Virtual-Network-Created-With-Terraform]

Terraform used the selected providers to generate the
following execution plan. Resource actions are indicated
with the following symbols:
-/+ destroy and then create replacement

Terraform will perform the following actions:

  # azurerm_resource_group.first-resource-group must be replaced
-/+ resource "azurerm_resource_group" "first-resource-group" {
      ~ id       = "/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/Third-Resource-Group-Created-With-Terraform" -> (known after apply)
      ~ name     = "Third-Resource-Group-Created-With-Terraform" -> "Second-Resource-Group-Created-With-Terraform" # forces replacement
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
      ~ guid                    = "e32ecf1b-13ed-4799-9138-7552f2704309" -> (known after apply)
      ~ id                      = "/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/Third-Resource-Group-Created-With-Terraform/providers/Microsoft.Network/virtualNetworks/First-Virtual-Network-Created-With-Terraform" -> (known after apply)
        name                    = "First-Virtual-Network-Created-With-Terraform"
      ~ resource_group_name     = "Third-Resource-Group-Created-With-Terraform" -> "Second-Resource-Group-Created-With-Terraform" # forces replacement
      ~ subnet                  = [] -> (known after apply)
      - tags                    = {} -> null
        # (4 unchanged attributes hidden)
    }

Plan: 2 to add, 0 to change, 2 to destroy.

Changes to Outputs:
  + resource_group_id = (known after apply)

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

azurerm_virtual_network.first-virtual-network: Destroying... [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/Third-Resource-Group-Created-With-Terraform/providers/Microsoft.Network/virtualNetworks/First-Virtual-Network-Created-With-Terraform]
azurerm_virtual_network.first-virtual-network: Still destroying... [id=/subscriptions/e4d375e7-483d-4501-9ed4-...Virtual-Network-Created-With-Terraform, 00m10s elapsed]
azurerm_virtual_network.first-virtual-network: Destruction complete after 12s
azurerm_resource_group.first-resource-group: Destroying... [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/Third-Resource-Group-Created-With-Terraform]
azurerm_resource_group.first-resource-group: Still destroying... [id=/subscriptions/e4d375e7-483d-4501-9ed4-...-Resource-Group-Created-With-Terraform, 00m10s elapsed]
azurerm_resource_group.first-resource-group: Destruction complete after 17s
azurerm_resource_group.first-resource-group: Creating...
azurerm_resource_group.first-resource-group: Creation complete after 5s [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/Second-Resource-Group-Created-With-Terraform]
azurerm_virtual_network.first-virtual-network: Creating...
azurerm_virtual_network.first-virtual-network: Creation complete after 4s [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/Second-Resource-Group-Created-With-Terraform/providers/Microsoft.Network/virtualNetworks/First-Virtual-Network-Created-With-Terraform]

Apply complete! Resources: 2 added, 0 changed, 2 destroyed.

Outputs:

resource_group_id = "/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/Second-Resource-Group-Created-With-Terraform"
```

```sh
terraform -chdir=/home/ramumsrk/Documents/ata_1_0_TiB/Get-Started-Azure/learn-terraform-azure output
resource_group_id = "/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/Second-Resource-Group-Created-With-Terraform"
```