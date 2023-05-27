<#Install-Module -Name Az.Accounts,Az.Resources -Force -SkipPublisherCheck 

$Secret = ConvertTo-SecureString -String "$`{{secrets.PSGITHUBACTIONSV2_SPN_PSWD}}" -AsPlainText -Force -Verbose #Unable to consume secret from repo settings
$pscredential = New-Object -TypeName System.Management.Automation.PSCredential('865d9db9-7a02-4bf2-9b7b-33d108f42da5',$Secret)

Connect-AzAccount -ServicePrincipal -Credential $pscredential -Tenant 1054d918-a880-46d0-aa19-2dd47c7588d3 -Subscription 66f0b393-314b-4a8f-8aec-df3a9872eb3e -Verbose
Get-AzResourceGroup |ft
#>

#Write-Output "$`{{ vars.VAR }}" # "$`{{ secrets.PSGITHUBACTIONSV2_SPN_PSWD }}"  #Not working

#One can consume a repo variable as a script parameter in GHActions workflow. But a secret shows up as '***'
param ( [string]$my_var ) # Define the parameter
Write-Host "The value of MY_VAR is $my_var"
#>

