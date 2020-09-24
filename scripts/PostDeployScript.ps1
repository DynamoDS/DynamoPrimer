<#
   Date: 29/11/2019
   Purpose: Post Deploy Script of DynamoPrimer
#>
$ErrorActionPreference = "Stop"

try
{
	docker container stop $env:DOCKER_CONTAINER
	docker container rm $env:DOCKER_CONTAINER
}
catch
{
	Invoke-Expression -Command "$env:WORKSPACE\$env:COMMON_RESOURCES_DIR\scripts\RestartDockerDesktop.ps1"
	Write-Host $error[0]
	throw $LASTEXITCODE
}
finally
{
	docker container prune -f
}
