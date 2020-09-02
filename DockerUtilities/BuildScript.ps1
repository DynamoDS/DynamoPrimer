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

	docker exec $env:DOCKER_CONTAINER pwsh -command "$env:DOCKER_WORKSPACE\DockerUtilities\DockerCommands.ps1 -a $env:ENVIRONMENT_LANGUAGE -PrimerRoot $env:DOCKER_WORKSPACE"
	
	if($LASTEXITCODE -ne 0)
	{
		throw "The build-generation process failed"
	}
}
catch
{
	Invoke-Expression -Command "$env:WORKSPACE\DockerUtilities\PostDeployScript.ps1"
	Write-Host $error[0]
	throw $LASTEXITCODE
}
