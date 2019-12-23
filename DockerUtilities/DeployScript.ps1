<#
   Date: 29/11/2019
   Purpose: Deploy Script of DynamoPrimer
#>
$ErrorActionPreference = "Stop"

try
{	
	docker exec build-primer powershell -command "C:\WorkspacePrimer\DockerUtilities\DockerDeployCommands.ps1 $env:ENVIRONMENT_LANGUAGE $env:BUCKETNAME $env:DISTRIBUTIONID"
}
catch
{
	Invoke-Item "$env:WORKSPACE\DockerUtilities\PostDeployScript.ps1"
	Write-Host $error[0]
	throw $LASTEXITCODE
}
