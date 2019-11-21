<#
   Date: 21/11/2019
   Purpose: Build Script of Dynamo
#>
$ErrorActionPreference = "Stop"

try
{
	$WorkSpaceElements = "$env:WORKSPACE" -split '\\'
	$WorkSpaceName = $WorkSpaceElements[$WorkSpaceElements.Length - 1]
	docker exec build-primer powershell -command "c:\WorkspacePrimer\$WorkSpaceName\commands.ps1"
}
catch
{
	docker system prune -f	
	Invoke-Item "$env:WORKSPACE\DockerUtilities\RestartDockerDesktop.ps1"
	Write-Host $error[0]
	throw $LASTEXITCODE
}
