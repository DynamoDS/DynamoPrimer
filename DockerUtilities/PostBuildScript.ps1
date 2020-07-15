<#
   Date: 09/12/2019
   Purpose: Post Build Script of DynamoPrimer
#>
$ErrorActionPreference = "Stop"

try
{
	if ($env:ENVIRONMENT_LANGUAGE -eq "")
	{
	   throw "No languages were selected."
	}
	
	docker exec $env:DOCKER_CONTAINER pwsh -command "$env:DOCKER_WORKSPACE\DockerUtilities\DockerVaultCommands.ps1 $env:ADS_USER_NAME $env:ADS_USER_PASSWORD"
	
	if($LASTEXITCODE -ne 0)
	{
	   throw "The Vaullt login failed"
	}

	docker exec $env:DOCKER_CONTAINER pwsh -command "$env:DOCKER_WORKSPACE\DockerUtilities\DockerPDFCompCommands.ps1 -a $env:ENVIRONMENT_LANGUAGE $env:PDFCOMPRESS_COLORIMAGERESOLUTION $env:PDFCOMPRESS_PDFSETTINGS $env:PDFCOMPRESS_DEVICE $env:DOCKER_WORKSPACE"
	
	if($LASTEXITCODE -ne 0)
	{
	   throw "The PDF compression failed"
	}
}
catch
{
	Invoke-Expression -Command "$env:WORKSPACE\DockerUtilities\PostDeployScript.ps1"
	Write-Host $error[0]
	throw $LASTEXITCODE
}
