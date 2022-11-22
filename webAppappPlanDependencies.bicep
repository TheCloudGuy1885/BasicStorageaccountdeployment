resource webApplication 'Microsoft.Web/sites@2021-01-15' = {
  name: 'webDemo1'
  location: resourceGroup().location
  properties: {
    serverFarmId: appServicePlan.id
  }
}

resource appServicePlan 'Microsoft.Web/serverfarms@2020-12-01' = {
  name: 'demoapp1'
  location: resourceGroup().location
  sku: {
    name: 'F1'
    capacity: 1
  }
}

