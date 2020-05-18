param (
     [string]$resourceGroup,
     [string]$clusterName,
     [string[]]$namespaces
)

az aks get-credentials -n $clusterName -g $resourceGroup
foreach ($namespace in $namespaces) {
     kubectl create namespace $namespace
}