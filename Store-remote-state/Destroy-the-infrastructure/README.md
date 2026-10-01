# Destroy the infrastructure
```sh
terraform -chdir=/home/ramumsrk/Documents/ata_1_0_TiB/Get-Started-Azure/learn-terraform-azure plan -destroy
Running plan in HCP Terraform. Output will stream here. Pressing Ctrl-C
will stop streaming the logs, but will not stop the plan running remotely.

Preparing the remote plan...

To view this run in a browser, visit:
https://app.terraform.io/app/First-Organization-Ramu/learn-terraform-azure/runs/run-pYspZDMM6gLPwbbJ

Waiting for the plan to start...

Terraform v1.16.4
on linux_amd64
Initializing plugins and modules...
azurerm_resource_group.first-resource-group: Refreshing state... [id=/subscriptions/e4d375e7-483d-4501-9ed4-ef9f641a75cb/resourceGroups/Second-Resource-Group-Created-With-Terraform]
azurerm_virtual_network.first-virtual-network: Refreshing state... [id=/subscriptions/e4d375e7-483d-4501-9ed4-ef9f641a75cb/resourceGroups/Second-Resource-Group-Created-With-Terraform/providers/Microsoft.Network/virtualNetworks/First-Virtual-Network-Created-With-Terraform]

Terraform used the selected providers to generate the
following execution plan. Resource actions are indicated
with the following symbols:
  - destroy

Terraform will perform the following actions:

  # azurerm_resource_group.first-resource-group will be destroyed
  - resource "azurerm_resource_group" "first-resource-group" {
      - id       = "/subscriptions/e4d375e7-483d-4501-9ed4-ef9f641a75cb/resourceGroups/Second-Resource-Group-Created-With-Terraform" -> null
      - location = "indiasouthcentral" -> null
      - name     = "Second-Resource-Group-Created-With-Terraform" -> null
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
      - guid                    = "85790f63-fc5d-42b6-b761-3370525b7402" -> null
      - id                      = "/subscriptions/e4d375e7-483d-4501-9ed4-ef9f641a75cb/resourceGroups/Second-Resource-Group-Created-With-Terraform/providers/Microsoft.Network/virtualNetworks/First-Virtual-Network-Created-With-Terraform" -> null
      - location                = "indiasouthcentral" -> null
      - name                    = "First-Virtual-Network-Created-With-Terraform" -> null
      - resource_group_name     = "Second-Resource-Group-Created-With-Terraform" -> null
      - subnet                  = [] -> null
      - tags                    = {} -> null
        # (2 unchanged attributes hidden)
    }

Plan: 0 to add, 0 to change, 2 to destroy.

Changes to Outputs:
  - resource_group_id = "/subscriptions/e4d375e7-483d-4501-9ed4-ef9f641a75cb/resourceGroups/Second-Resource-Group-Created-With-Terraform" -> null

─────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan,
so Terraform can't guarantee to take exactly these
actions if you run "terraform apply" now.
```

```bash
terraform -chdir=/home/ramumsrk/Documents/ata_1_0_TiB/Get-Started-Azure/learn-terraform-azure apply -destroy
Running apply in HCP Terraform. Output will stream here. Pressing Ctrl-C
will cancel the remote apply if it's still pending. If the apply started it
will stop streaming the logs, but will not stop the apply running remotely.

Preparing the remote apply...

To view this run in a browser, visit:
https://app.terraform.io/app/First-Organization-Ramu/learn-terraform-azure/runs/run-92mxmNVpzBp9DhxJ

Waiting for the plan to start...

Terraform v1.16.4
on linux_amd64
Initializing plugins and modules...
azurerm_resource_group.first-resource-group: Refreshing state... [id=/subscriptions/e4d375e7-483d-4501-9ed4-ef9f641a75cb/resourceGroups/Second-Resource-Group-Created-With-Terraform]
azurerm_virtual_network.first-virtual-network: Refreshing state... [id=/subscriptions/e4d375e7-483d-4501-9ed4-ef9f641a75cb/resourceGroups/Second-Resource-Group-Created-With-Terraform/providers/Microsoft.Network/virtualNetworks/First-Virtual-Network-Created-With-Terraform]

Terraform used the selected providers to generate the
following execution plan. Resource actions are indicated
with the following symbols:
  - destroy

Terraform will perform the following actions:

  # azurerm_resource_group.first-resource-group will be destroyed
  - resource "azurerm_resource_group" "first-resource-group" {
      - id       = "/subscriptions/e4d375e7-483d-4501-9ed4-ef9f641a75cb/resourceGroups/Second-Resource-Group-Created-With-Terraform" -> null
      - location = "indiasouthcentral" -> null
      - name     = "Second-Resource-Group-Created-With-Terraform" -> null
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
      - guid                    = "85790f63-fc5d-42b6-b761-3370525b7402" -> null
      - id                      = "/subscriptions/e4d375e7-483d-4501-9ed4-ef9f641a75cb/resourceGroups/Second-Resource-Group-Created-With-Terraform/providers/Microsoft.Network/virtualNetworks/First-Virtual-Network-Created-With-Terraform" -> null
      - location                = "indiasouthcentral" -> null
      - name                    = "First-Virtual-Network-Created-With-Terraform" -> null
      - resource_group_name     = "Second-Resource-Group-Created-With-Terraform" -> null
      - subnet                  = [] -> null
      - tags                    = {} -> null
        # (2 unchanged attributes hidden)
    }

Plan: 0 to add, 0 to change, 2 to destroy.

Changes to Outputs:
  - resource_group_id = "/subscriptions/e4d375e7-483d-4501-9ed4-ef9f641a75cb/resourceGroups/Second-Resource-Group-Created-With-Terraform" -> null

Do you really want to destroy all resources in workspace "learn-terraform-azure"?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

azurerm_virtual_network.first-virtual-network: Destroying... [id=/subscriptions/e4d375e7-483d-4501-9ed4-ef9f641a75cb/resourceGroups/Second-Resource-Group-Created-With-Terraform/providers/Microsoft.Network/virtualNetworks/First-Virtual-Network-Created-With-Terraform]
azurerm_virtual_network.first-virtual-network: Still destroying... [10s elapsed]
azurerm_virtual_network.first-virtual-network: Destruction complete after 17s
azurerm_resource_group.first-resource-group: Destroying... [id=/subscriptions/e4d375e7-483d-4501-9ed4-ef9f641a75cb/resourceGroups/Second-Resource-Group-Created-With-Terraform]
azurerm_resource_group.first-resource-group: Still destroying... [10s elapsed]
azurerm_resource_group.first-resource-group: Still destroying... [20s elapsed]
azurerm_resource_group.first-resource-group: Still destroying... [30s elapsed]
azurerm_resource_group.first-resource-group: Still destroying... [40s elapsed]
azurerm_resource_group.first-resource-group: Still destroying... [50s elapsed]
azurerm_resource_group.first-resource-group: Still destroying... [1m0s elapsed]
azurerm_resource_group.first-resource-group: Still destroying... [1m10s elapsed]
azurerm_resource_group.first-resource-group: Still destroying... [1m20s elapsed]
azurerm_resource_group.first-resource-group: Still destroying... [1m30s elapsed]
azurerm_resource_group.first-resource-group: Still destroying... [1m40s elapsed]
azurerm_resource_group.first-resource-group: Still destroying... [1m50s elapsed]
azurerm_resource_group.first-resource-group: Still destroying... [2m0s elapsed]
╷
│ Error: deleting Resource Group "Second-Resource-Group-Created-With-Terraform": the Resource Group still contains Resources.
│ 
│ Terraform is configured to check for Resources within the Resource Group when deleting the Resource Group - and
│ raise an error if nested Resources still exist to avoid unintentionally deleting these Resources.
│ 
│ Terraform has detected that the following Resources still exist within the Resource Group:
│ 
│ * `/subscriptions/e4d375e7-483d-4501-9ed4-ef9f641a75cb/resourceGroups/Second-Resource-Group-Created-With-Terraform/providers/Microsoft.Network/virtualNetworks/First-Virtual-Network-Created-With-Terraform`
│ 
│ This feature is intended to avoid the unintentional destruction of nested Resources provisioned through some
│ other means (for example, an ARM Template Deployment) - as such you must either remove these Resources, or
│ disable this behaviour using the feature flag `prevent_deletion_if_contains_resources` within the `features`
│ block when configuring the Provider, for example:
│ 
│ provider "azurerm" {
│   features {
│     resource_group {
│       prevent_deletion_if_contains_resources = false
│     }
│   }
│ }
│ 
│ When that feature flag is set, Terraform will skip checking for any Resources within the Resource Group and
│ delete this using the Azure API directly (which will clear up any nested resources).
│ 
│ More information on the `features` block can be found in the documentation:
│ https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs#features
│ 
│ 
│ 
╵
Operation failed: failed running terraform apply (exit 1)
```

```bash
az group delete --resource-group Second-Resource-Group-Created-With-Terraform
Are you sure you want to perform this operation? (y/n): y
```

```sh
terraform -chdir=/home/ramumsrk/Documents/ata_1_0_TiB/Get-Started-Azure/learn-terraform-azure apply -destroy
Running apply in HCP Terraform. Output will stream here. Pressing Ctrl-C
will cancel the remote apply if it's still pending. If the apply started it
will stop streaming the logs, but will not stop the apply running remotely.

Preparing the remote apply...

To view this run in a browser, visit:
https://app.terraform.io/app/First-Organization-Ramu/learn-terraform-azure/runs/run-oZBvwAY4dLeEYcmz

Waiting for the plan to start...

Terraform v1.16.4
on linux_amd64
Initializing plugins and modules...
azurerm_resource_group.first-resource-group: Refreshing state... [id=/subscriptions/e4d375e7-483d-4501-9ed4-ef9f641a75cb/resourceGroups/Second-Resource-Group-Created-With-Terraform]

No changes. No objects need to be destroyed.

Either you have not created any objects yet or the
existing objects were already deleted outside of
Terraform.
```