<#
   Date: 09/12/2019
   Purpose: Run the deploy commands inside container.
#>
param($DistributionID)
$ErrorActionPreference = "Stop"

try
{
    # DynamoPrimer´s location
    $PrimerRoot = "c:\WorkspacePrimer"
    $jsonToken = (Get-Content "$PrimerRoot\vault.json" -Raw) | ConvertFrom-Json

    #Set credentials
    Set-AWSCredential -AccessKey $jsonToken.data.access_key -SecretKey $jsonToken.data.secret_key -SessionToken $jsonToken.data.security_token

    New-CFInvalidation -DistributionId $DistributionID -Paths_Item "/*"
}
catch
{
    Write-Host $error[0]
	throw $LASTEXITCODE
}

