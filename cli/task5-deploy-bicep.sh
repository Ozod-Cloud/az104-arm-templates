#!/bin/bash
# Task 5: Deploy managed disk with Azure Bicep as az104-disk5
RG=az104-rg3

az deployment group create --resource-group $RG --name task5-disk5 --template-file bicep/azuredeploydisk.bicep -o table

az disk list --resource-group $RG -o table