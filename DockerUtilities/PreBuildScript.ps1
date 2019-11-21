<#
   Date: 21/11/2019
   Purpose: Pre Build Script of DynamoPrimer
#>
$ErrorActionPreference = "Stop"

try
{
	
	#Docker configuration
	docker pull mcr.microsoft.com/windows:1903

	docker run -m 8GB -d -t --mount type=bind,source=$env:WORKSPACE\DynamoPrimer,target=c:\WorkspacePrimer --name build-primer docker pull mcr.microsoft.com/windows:1903
}
catch
{
	docker system prune -f	
	Invoke-Item "$env:WORKSPACE\DockerUtilities\RestartDockerDesktop.ps1"
	Write-Host $error[0]
	throw $LASTEXITCODE
}
