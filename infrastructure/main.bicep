@allowed(['dev', 'prod'])
param environment string

targetScope = 'resourceGroup'

module appService 'appservice.bicep' = {
  name: 'appService'
  params: {
    appName: 'workshop-dnazghbicep-rgunaseelan-${environment}'
    location: 'centralus'
    environment: environment
  }
}
