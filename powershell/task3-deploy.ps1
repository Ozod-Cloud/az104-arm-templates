# Task 3: Deploy ARM template with Azure PowerShell as az104-disk3
$RG = "az104-rg3"

New-AzResourceGroupDeployment -ResourceGroupName $RG -Name "task3-disk3" -TemplateFile templates/template.json -TemplateParameterFile templates/parameters.json -disk_name "az104-disk3"

Get-AzDisk -ResourceGroupName $RG | Format-Table Name, ResourceGroupName, Location, DiskSizeGB, ProvisioningState
