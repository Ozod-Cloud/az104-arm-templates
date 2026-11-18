@description('Name of the managed disk')
param managedDiskName string = 'az104-disk5'

@description('Disk size in GiB')
@minValue(4)
@maxValue(65536)
param diskSizeinGiB int = 32

@description('Location for all resources')
param location string = resourceGroup().location

resource managedDisk 'Microsoft.Compute/disks@2023-04-02' = {
name: managedDiskName
location: location
sku: {
name: 'StandardSSD_LRS'
}
properties: {
creationData: {
createOption: 'Empty'
}
diskSizeGB: diskSizeinGiB
}
}
