#!/bin/bash
# Task 1: Create managed disk and export ARM template
RG=az104-rg3
LOC=eastus

az group create --name $RG --location $LOC -o table

az disk create --resource-group $RG --name az104-disk1 --location $LOC --sku Standard_LRS --size-gb 32 -o table

az group export --name $RG > templates/template.json