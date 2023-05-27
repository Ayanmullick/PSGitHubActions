$Secret = ConvertTo-SecureString -String "$`{{secrets.PSGITHUBACTIONSV2_SPN_PSWD}}" -AsPlainText -Force -Verbose
$pscredential = New-Object -TypeName System.Management.Automation.PSCredential('865d9db9-7a02-4bf2-9b7b-33d108f42da5',$Secret)

Connect-AzAccount -ServicePrincipal -Credential $pscredential -Tenant 1054d918-a880-46d0-aa19-2dd47c7588d3 -Subscription 66f0b393-314b-4a8f-8aec-df3a9872eb3e -Verbose
Get-AzResourceGroup |ft
