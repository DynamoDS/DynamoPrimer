<#
   Date: 21/11/2019
   Purpose: Pre Build Script of DynamoPrimer
#>
$ErrorActionPreference = "Stop"

try
{
	#Docker configuration
	$DockerImage = "artifactory.dev.adskengineer.net/docker-local-v2/dynamo/dynamoprimer:$env:DOCKER_IMAGE_VERSION"

	docker pull $DockerImage

	docker run -m 8GB -d -t --mount type=bind,source=$env:WORKSPACE,target=c:\WorkspacePrimer --name build-primer $DockerImage
}
catch
{
	Invoke-Item "$env:WORKSPACE\DockerUtilities\PostDeployScript.ps1"
	Write-Host $error[0]
	throw $LASTEXITCODE
}
