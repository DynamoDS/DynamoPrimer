<#
   Date: 29/11/2019
   Purpose: Run the vault commands inside container.
#>
param(
   $ads_user_name, 
   $ads_user_password
)
$ErrorActionPreference = "Stop"

try {
   
   vault login -method=ldap -path=no-mfa-ldap -address=https://civ1.dv.adskengineer.net:8200 username=$ads_user_name password=$ads_user_password
   
   if($LASTEXITCODE -ne 0)
   {
      throw "The Vault login failed"
   }

}
catch {
   Write-Host $error[0]
	throw $LASTEXITCODE
}
