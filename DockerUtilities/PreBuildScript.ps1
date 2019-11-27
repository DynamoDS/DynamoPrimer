<#
   Date: 21/11/2019
   Purpose: Pre Build Script of DynamoPrimer
#>
$ErrorActionPreference = "Stop"

try
{
	#Docker configuration
	$DockerImage = "dynamoprimer:1.0.0"

	#docker pull $DockerImage

	docker run -e PRIMER_ENV_LANGUAGE="$env:ENVIRONMENT_LANGUAGE" -m 8GB -d -t --mount type=bind,source=$env:WORKSPACE,target=c:\WorkspacePrimer --name build-primer $DockerImage
}
catch
{
	docker system prune -f	
	Invoke-Item "$env:WORKSPACE\DockerUtilities\RestartDockerDesktop.ps1"
	Write-Host $error[0]
	throw $LASTEXITCODE
}
