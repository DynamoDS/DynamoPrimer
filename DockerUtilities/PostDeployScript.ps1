<#
   Date: 29/11/2019
   Purpose: Post Deploy Script of DynamoPrimer
#>
$ErrorActionPreference = "Stop"

try
{
	docker container stop build-primer
	docker container rm build-primer
}
catch
{
	Invoke-Expression -Command "$env:WORKSPACE\DockerUtilities\PostDeployScript.ps1"
	Write-Host $error[0]
	throw $LASTEXITCODE
}
finally
{
	docker container prune -f
}
