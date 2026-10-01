# Apply your changes
```bash
terraform -chdir=/home/ramumsrk/Documents/ata_1_0_TiB/Get-Started-Azure/learn-terraform-azure plan
azurerm_resource_group.first-resource-group: Refreshing state... [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/First-Resource-Group-Created-With-Terraform]
azurerm_virtual_network.first-virtual-network: Refreshing state... [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/First-Resource-Group-Created-With-Terraform/providers/Microsoft.Network/virtualNetworks/First-Virtual-Network-Created-With-Terraform]

Terraform used the selected providers to generate the
following execution plan. Resource actions are indicated
with the following symbols:
  ~ update in-place

Terraform will perform the following actions:

  # azurerm_resource_group.first-resource-group will be updated in-place
  ~ resource "azurerm_resource_group" "first-resource-group" {
        id       = "/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/First-Resource-Group-Created-With-Terraform"
        name     = "First-Resource-Group-Created-With-Terraform"
      ~ tags     = {
          + "CourseName" = "Get Started - Azure"
          + "CourseURL"  = "https://developer.hashicorp.com/terraform/tutorials/azure-get-started"
        }
        # (1 unchanged attribute hidden)
    }

Plan: 0 to add, 1 to change, 0 to destroy.

─────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan,
so Terraform can't guarantee to take exactly these
actions if you run "terraform apply" now.
```

```sh
terraform -chdir=/home/ramumsrk/Documents/ata_1_0_TiB/Get-Started-Azure/learn-terraform-azure apply
azurerm_resource_group.first-resource-group: Refreshing state... [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/First-Resource-Group-Created-With-Terraform]
azurerm_virtual_network.first-virtual-network: Refreshing state... [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/First-Resource-Group-Created-With-Terraform/providers/Microsoft.Network/virtualNetworks/First-Virtual-Network-Created-With-Terraform]

Terraform used the selected providers to generate the
following execution plan. Resource actions are indicated
with the following symbols:
  ~ update in-place

Terraform will perform the following actions:

  # azurerm_resource_group.first-resource-group will be updated in-place
  ~ resource "azurerm_resource_group" "first-resource-group" {
        id       = "/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/First-Resource-Group-Created-With-Terraform"
        name     = "First-Resource-Group-Created-With-Terraform"
      ~ tags     = {
          + "CourseName" = "Get Started - Azure"
          + "CourseURL"  = "https://developer.hashicorp.com/terraform/tutorials/azure-get-started"
        }
        # (1 unchanged attribute hidden)
    }

Plan: 0 to add, 1 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

azurerm_resource_group.first-resource-group: Modifying... [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/First-Resource-Group-Created-With-Terraform]
azurerm_resource_group.first-resource-group: Modifications complete after 4s [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/First-Resource-Group-Created-With-Terraform]

Apply complete! Resources: 0 added, 1 changed, 0 destroyed.
```