#!/bin/bash
# Task 4: Deploy ARM template with Azure CLI as az104-disk4
RG=az104-rg3

az deployment group create --resource-group $RG --name task4-disk4 --template-file templates/template.json --parameters @templates/parameters.json --parameters disk_name=az104-disk4 -o table

az disk list --resource-group $RG -o table