$Secret = ConvertTo-SecureString -String 'Passw0rd' -AsPlainText -Force
$pscredential = New-Object -TypeName System.Management.Automation.PSCredential('0416e2ab-5d3a-4ae5-9b90-e658659d792a',$Secret)
Connect-AzAccount -ServicePrincipal -Credential $pscredential -Tenant 1054d918-a880-46d0-aa19-2dd47c7588d3 -Subscription 76299958-463a-4b22-80cc-45af1e994418 -Verbose

New-AzResourceGroup -Location SouthCentralUS -Name GitHubActions -Verbose
