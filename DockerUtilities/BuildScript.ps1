<#
   Date: 21/11/2019
   Purpose: Build Script of DynamoPrimer
#>
$ErrorActionPreference = "Stop"

try
{
	docker exec build-primer powershell -command "C:\WorkspacePrimer\DockerUtilities\DockerCommands.ps1 $env:ENVIRONMENT_LANGUAGE"
}
catch
{
	docker system prune -f	
	Invoke-Item "$env:WORKSPACE\DockerUtilities\RestartDockerDesktop.ps1"
	Write-Host $error[0]
	throw $LASTEXITCODE
}
