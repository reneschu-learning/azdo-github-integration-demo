targetScope = 'subscription'

param location string = 'westeurope'

@description('Unique suffix for resource group')
var resourceSuffix = uniqueString(subscription().subscriptionId, location)

resource rg 'Microsoft.Resources/resourceGroups@2025-04-01' = {
  name: 'demo-rg-${resourceSuffix}'
  location: location
}

module swa 'br/public:avm/res/web/static-site:0.9.3' = {
  name: 'demo'
  scope: rg
  params: {
    name: 'swa-${resourceSuffix}'
    location: location
    sku: 'Free'
  }
}

@description('Default Hostname')
output endpoint string = swa.outputs.defaultHostname

@description('Static Web App Name')
output staticWebAppName string = swa.outputs.name
