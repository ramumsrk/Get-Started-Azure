# Inspect your state
```bash
terraform -chdir=/home/ramumsrk/Documents/ata_1_0_TiB/Get-Started-Azure/learn-terraform-azure show
# azurerm_resource_group.first-resource-group:
resource "azurerm_resource_group" "first-resource-group" {
    id       = "/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/First-Resource-Group-Created-With-Terraform"
    location = "indiasouthcentral"
    name     = "First-Resource-Group-Created-With-Terraform"
}
```

```sh
terraform -chdir=/home/ramumsrk/Documents/ata_1_0_TiB/Get-Started-Azure/learn-terraform-azure state list
azurerm_resource_group.first-resource-group
```