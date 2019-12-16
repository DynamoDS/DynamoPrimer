<#
   Date: 10/12/2019
   Purpose: Run the deploy commands inside container.
#>
param($distributionID)
$ErrorActionPreference = "Stop"

try
{    
    New-CFInvalidation -DistributionId $distributionID -Paths_Item "/*" -Paths_Quantity 1
}
catch
{
    Write-Host $error[0]
	throw $LASTEXITCODE
}
