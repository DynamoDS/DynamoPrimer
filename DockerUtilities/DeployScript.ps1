<#
   Date: 29/11/2019
   Purpose: Deploy Script of DynamoPrimer
#>
$ErrorActionPreference = "Stop"

try
{
	$bucketName = "staging.dynamoprimer.com"
	$DistributionID = ""

	docker exec build-primer powershell -command "C:\WorkspacePrimer\DockerUtilities\DockerDeployCommands.ps1 $env:ENVIRONMENT_LANGUAGE $bucketName"
	docker exec build-primer powershell -command "C:\WorkspacePrimer\DockerUtilities\DockerCloudFrontCommands.ps1 $DistributionID"
}
catch
{
	docker system prune -f	
	Invoke-Item "$env:WORKSPACE\DockerUtilities\RestartDockerDesktop.ps1"
	Write-Host $error[0]
	throw $LASTEXITCODE
}
