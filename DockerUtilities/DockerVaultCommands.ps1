<#
   Date: 29/11/2019
   Purpose: Run the deploy commands inside container.
#>
param($ads_user_name, [Security.SecureString]$ads_user_password=$(Throw "Password required."))
$ErrorActionPreference = "Stop"

# DynamoPrimer´s location
$PrimerRoot = "c:\WorkspacePrimer"

vault login -method=ldap -address=https://civ1.dv.adskengineer.net:8200 username=$ads_user_name password=$ads_user_password

vault write -address=https://civ1.dv.adskengineer.net:8200 -format=json account/572569678988/sts/Application-Ops ttl=15m | ConvertTo-Json -depth 100 | Out-File "$PrimerRoot\vault.json"
