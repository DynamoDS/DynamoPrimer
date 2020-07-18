<#
   Purpose: Setup with the applications needed for the CICD pipeline
#>
$ErrorActionPreference = "Stop"

#Getting directory names to install the tools
$nugetDir = "$env:WORKSPACE\DockerUtilities\Tools\Nuget"
$elementsPath = ($env:WORKSPACE -split "\\")

$toolsDir = $elementsPath[0] + '\' + $elementsPath[1] + '\tools'

#Creation of the tools directories
New-Item -Path $nugetDir  -ItemType Directory

$nugetTool = "$nugetDir\nuget.exe"

#Download of latest version of Nuget
Invoke-WebRequest -Uri "https://dist.nuget.org/win-x86-commandline/latest/nuget.exe" -OutFile $nugetTool

try {
      
   #Instal Python from nuget
   &"$nugetTool" install python -source nuget.org -ExcludeVersion -OutputDirectory $toolsDir

   if($LASTEXITCODE -ne 0) {
      throw "Install of Python has failed"
  }
}
catch {
    Write-Host $error[0]
    throw $LASTEXITCODE
}