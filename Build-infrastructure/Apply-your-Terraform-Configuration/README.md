# Apply your Terraform Configuration
```sh
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
      + name     = "First-Resource-Group-Created-With-Terraform"
    }

Plan: 1 to add, 0 to change, 0 to destroy.

─────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan,
so Terraform can't guarantee to take exactly these
actions if you run "terraform apply" now.
```

```bash
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
      + name     = "First-Resource-Group-Created-With-Terraform"
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

azurerm_resource_group.first-resource-group: Creating...
azurerm_resource_group.first-resource-group: Creation complete after 7s [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/First-Resource-Group-Created-With-Terraform]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```