<#
   Date: 09/12/2019
   Purpose: Post Build Script of DynamoPrimer
#>
$ErrorActionPreference = "Stop"

try
{
	docker exec build-primer powershell -command "C:\WorkspacePrimer\DockerUtilities\DockerVaultCommands.ps1 $env:ADS_USER_NAME $env:ADS_USER_PASSWORD"
	docker exec build-primer powershell -command "C:\WorkspacePrimer\DockerUtilities\DockerPDFCompCommands.ps1 $env:ENVIRONMENT_LANGUAGE $env:PDFCOMPRESS_COLORIMAGERESOLUTION $env:PDFCOMPRESS_PDFSETTINGS $env:PDFCOMPRESS_DEVICE"
}
catch
{
	Invoke-Item "$env:WORKSPACE\DockerUtilities\PostDeployScript.ps1"
	Write-Host $error[0]
	throw $LASTEXITCODE
}
