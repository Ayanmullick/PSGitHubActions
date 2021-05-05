$Secret = ConvertTo-SecureString -String 'AgSg5r~E4k4hd.4mauwOhV-pC8wQh.~66V' -AsPlainText -Force -Verbose
#$pscredential = New-Object -TypeName System.Management.Automation.PSCredential('29396ed6-d65a-4886-80e9-eb4889bb25d3',$Secret) -Verbose

#$pscredential = New-Object -TypeName System.Management.Automation.PSCredential('29396ed6-d65a-4886-80e9-eb4889bb25d3',$secrets.SECRET) -Verbose
#$secrets.SECRET

#Install-Module -Name Az.Accounts,Az.Resources -Force -SkipPublisherCheck 

#Connect-AzAccount -ServicePrincipal -Credential $pscredential -Tenant 1054d918-a880-46d0-aa19-2dd47c7588d3 -Subscription 76299958-463a-4b22-80cc-45af1e994418 -Verbose

#New-AzResourceGroup -Location SouthCentralUS -Name GitHubActions -Verbose
#Get-AzResourceGroup
Get-Module -ListAvailable
#V2
$pscredential = New-Object -TypeName System.Management.Automation.PSCredential('29396ed6-d65a-4886-80e9-eb4889bb25d3',$Secret)

Get-AzResourceGroup -DefaultProfile (Connect-AzAccount -ServicePrincipal -Credential $pscredential -Tenant 1054d918-a880-46d0-aa19-2dd47c7588d3 -Subscription 76299958-463a-4b22-80cc-45af1e994418)|ft
