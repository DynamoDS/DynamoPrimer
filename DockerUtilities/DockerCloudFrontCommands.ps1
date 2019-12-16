<#
   Date: 10/12/2019
   Purpose: Run the deploy commands inside container.
#>
param($distributionID)
$ErrorActionPreference = "Stop"

try
{   
    $invalidationLong = [long](Get-Date -Format "yyyddMMHHmm")
    New-CFInvalidation -DistributionId $distributionID -InvalidationBatch_CallerReference $invalidationLong -Paths_Item "/*" -Paths_Quantity 1
}
catch
{
    Write-Host $error[0]
	throw $LASTEXITCODE
}
