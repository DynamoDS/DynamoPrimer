<#
   Date: 29/11/2019
   Purpose: Deploy Script of DynamoPrimer
#>
$ErrorActionPreference = "Stop"

try
{
	$bucketName = "staging.dynamoprimer.com"
	$distributionID = "E1L4E92B2OBQIF"

	docker exec build-primer powershell -command "C:\WorkspacePrimer\DockerUtilities\DockerDeployCommands.ps1 $env:ENVIRONMENT_LANGUAGE $bucketName"
	docker exec build-primer powershell -command "C:\WorkspacePrimer\DockerUtilities\DockerCloudFrontCommands.ps1 $distributionID"
}
catch
{
	Invoke-Item "$env:WORKSPACE\DockerUtilities\PostDeployScript.ps1"
	Write-Host $error[0]
	throw $LASTEXITCODE
}
