<#
   Date: 29/11/2019
   Purpose: Deploy Script of DynamoPrimer
#>
$ErrorActionPreference = "Stop"

try
{	
	if ($env:ENVIRONMENT_LANGUAGE -eq "")
	{
		throw "No languages were selected."
	}
	docker exec $env:DOCKER_CONTAINER pwsh -command "$env:DOCKER_WORKSPACE\$env:COMMON_RESOURCES_DIR\scripts\DockerDeployCommands.ps1 -a $env:ENVIRONMENT_LANGUAGE $env:BUCKETNAME $env:DISTRIBUTIONID $env:DOCKER_WORKSPACE"

	if($LASTEXITCODE -ne 0)
	{
		throw "The AWS Deploy failed"
	}
}
catch
{
	Invoke-Expression -Command "$env:WORKSPACE\$env:COMMON_RESOURCES_DIR\scripts\PostDeployScript.ps1"
	Write-Host $error[0]
	throw $LASTEXITCODE
}
