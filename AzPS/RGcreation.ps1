Install-Module -Name Az.Accounts,Az.Resources -Force -SkipPublisherCheck 

$Secret = ConvertTo-SecureString -String '' -AsPlainText -Force -Verbose
$pscredential = New-Object -TypeName System.Management.Automation.PSCredential('29396ed6-d65a-4886-80e9-eb4889bb25d3',$Secret)

Connect-AzAccount -ServicePrincipal -Credential $pscredential -Tenant 1054d918-a880-46d0-aa19-2dd47c7588d3 -Subscription 76299958-463a-4b22-80cc-45af1e994418 -Verbose
Get-AzResourceGroup |ft
