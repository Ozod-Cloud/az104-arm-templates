#!/bin/bash
# Task 2: Edit ARM template and redeploy as az104-disk2
RG=az104-rg3

# Rename parameter in template and parameters file
sed -i 's/disks_az104_disk1_name/disk_name/g' templates/template.json templates/parameters.json

# Change disk name value to az104-disk2
sed -i 's/az104-disk1/az104-disk2/' templates/parameters.json

# Deploy the template
az deployment group create --resource-group $RG --name task2-disk2 --template-file templates/template.json --parameters @templates/parameters.json -o table

# Verify
az disk list --resource-group $RG -o table
az deployment group list --resource-group $RG -o table