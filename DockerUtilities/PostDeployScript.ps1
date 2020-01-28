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
	Write-Host $error[0]
	throw $LASTEXITCODE
}
finally
{
	docker system prune -f
	Invoke-Item "$env:WORKSPACE\DockerUtilities\RestartDockerDesktop.ps1"
}
