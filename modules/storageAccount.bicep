@description('Name of the storage account')
param storageName string 
param location string
param storageSku string

resource storageaccount1 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: storageName
  location: location
  kind: 'StorageV2'
  sku: {
    name: storageSku
  }
  properties:{
    accessTier: 'Hot'
  }
}

output storageEndpoints object = storageaccount1.properties.primaryEndpoints  
