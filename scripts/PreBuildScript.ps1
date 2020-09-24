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

	docker run -m 8GB -d -t --mount type=bind,source=$env:WORKSPACE,target=$env:DOCKER_WORKSPACE --name $env:DOCKER_CONTAINER $DockerImage

}
catch
{
	Invoke-Expression -Command "$env:WORKSPACE\$env:COMMON_RESOURCES_DIR\scripts\PostDeployScript.ps1"
	Write-Host $error[0]
	throw $LASTEXITCODE
}
