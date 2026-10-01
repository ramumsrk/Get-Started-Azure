# Apply the configuration
```bash
terraform -chdir=/home/ramumsrk/Documents/ata_1_0_TiB/Get-Started-Azure/learn-terraform-azure apply
Running apply in HCP Terraform. Output will stream here. Pressing Ctrl-C
will cancel the remote apply if it's still pending. If the apply started it
will stop streaming the logs, but will not stop the apply running remotely.

Preparing the remote apply...

To view this run in a browser, visit:
https://app.terraform.io/app/First-Organization-Ramu/learn-terraform-azure/runs/run-LyvK5iUzUF7WYW1e

Waiting for the plan to start...

Terraform v1.16.4
on linux_amd64
Initializing plugins and modules...
azurerm_resource_group.first-resource-group: Refreshing state... [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/Second-Resource-Group-Created-With-Terraform]
azurerm_virtual_network.first-virtual-network: Refreshing state... [id=/subscriptions/<Second-Azure-Subscription-2>/resourceGroups/Second-Resource-Group-Created-With-Terraform/providers/Microsoft.Network/virtualNetworks/First-Virtual-Network-Created-With-Terraform]
azurerm_virtual_network.first-virtual-network: Drift detected (update)

No changes. Your infrastructure matches the configuration.

Terraform has compared your real infrastructure against
your configuration and found no differences, so no
changes are needed.
```