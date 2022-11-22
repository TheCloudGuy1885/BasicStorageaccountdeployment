resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'storage1983'
  location: 'eastus'
  kind: 'StorageV2'
  sku: {
    name: 'Premium_LRS'
  }
  resource blob 'blobServices' = {
    name: 'default'

    resource container1 'containers' = {
      name: 'nestedcontainer'
      
    }
  }
}
