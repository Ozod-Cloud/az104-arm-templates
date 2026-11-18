
# AZ-104 Lab 03 – Manage Azure Resources with ARM Templates & Bicep

Deployed the same managed disk five different ways using Infrastructure as Code.

| Task | Method | Resource | File |
|------|--------|----------|------|
| 1 | Azure CLI + `az group export` | az104-disk1 | cli/task1-create-disk.sh |
| 2 | Edited ARM template (sed) + CLI | az104-disk2 | cli/task2-edit-redeploy.sh |
| 3 | Azure PowerShell | az104-disk3 | powershell/task3-deploy.ps1 |
| 4 | Azure CLI with parameter override | az104-disk4 | cli/task4-deploy-cli.sh |
| 5 | Bicep (StandardSSD_LRS) | az104-disk5 | bicep/azuredeploydisk.bicep |

## Key concepts
- ARM template = declarative JSON blueprint; parameters file supplies values
- Parameter override at deploy time (`disk_name=...`) avoids editing files
- Deployment mode: Incremental (default) vs Complete (deletes resources not in template)
- Bicep compiles to ARM JSON with much shorter syntax

## Real-world issues I solved
- `az group export` does not create a parameters file, so I wrote parameters.json manually
- Used `pwsh` inside Bash instead of "Switch to PowerShell" to keep files in an ephemeral Cloud Shell session
- Wrote the Bicep file from scratch instead of uploading it from the lab VM
