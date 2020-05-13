<#
   Date: 21/11/2019
   Purpose: Build Script of DynamoPrimer
#>
$ErrorActionPreference = "Stop"

try
{
	if ($env:ENVIRONMENT_LANGUAGE -eq "")
	{
		throw "No languages were selected."
	}

	docker exec build-primer powershell -command "$env:DOCKER_WORKSPACE\DockerUtilities\DockerCommands.ps1 -a $env:ENVIRONMENT_LANGUAGE -PrimerRoot $env:DOCKER_WORKSPACE"
}
catch
{
	Invoke-Item "$env:WORKSPACE\DockerUtilities\PostDeployScript.ps1"
	Write-Host $error[0]
	throw $LASTEXITCODE
}
