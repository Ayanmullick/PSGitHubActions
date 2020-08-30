$Secret = ConvertTo-SecureString -String 'Passw0rd' -AsPlainText -Force
$pscredential = New-Object -TypeName System.Management.Automation.PSCredential('29396ed6-d65a-4886-80e9-eb4889bb25d3',$Secret)

Install-Module -Name Az.Accounts,Az.Resources -Force -SkipPublisherCheck -AllowClobber -Verbose
#Import-Module Az.Accounts,Az.Resources -Verbose

Connect-AzAccount -ServicePrincipal -Credential $pscredential -Tenant 1054d918-a880-46d0-aa19-2dd47c7588d3 -Subscription 76299958-463a-4b22-80cc-45af1e994418 -Verbose

New-AzResourceGroup -Location SouthCentralUS -Name GitHubActions -Verbose
