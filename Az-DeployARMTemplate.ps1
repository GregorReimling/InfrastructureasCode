## Deploy ARM Template with some questions about location, resourcegroup, etc.

# Login to Azure
##Login-AzAccount

Get-AzSubscription

$subscription = Read-Host -Prompt "Which subscription will you use for deployment?"
$resourceGroupName = Read-Host -Prompt "Enter the Resource Group name"
$location = Read-Host -Prompt "Enter the location (i.e. centralus)"

Select-AzSubscription $subscription

New-AzResourceGroup -Name $resourceGroupName -Location $location
