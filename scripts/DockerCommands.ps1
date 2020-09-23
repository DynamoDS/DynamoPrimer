<#
   Date: 21/11/2019
   Purpose: Run the commands inside container.
#>
#param($language)
param(
   [string[]]$ArrayParameter=@(), 
   $PrimerRoot,
   $CommonResourcesDir 
)

$ErrorActionPreference = "Stop"

try
{
   #Patch for Node12
   $pathjs = "$env:APPDATA\npm\node_modules\gitbook-cli\node_modules\graceful-fs\polyfills.js"

   if(Test-Path -Path $pathjs)
   {
      (Get-Content -Path $pathjs -Encoding utf8) | ForEach-Object {$_ -Replace "fs.stat ", "// fs.stat " ` -Replace "fs.fstat ", "// fs.fstat " ` -Replace "fs.lstat ", "// fs.lstat "} | Set-Content -Path $pathjs -Encoding utf8
   }

   # DynamoPrimer´s location
   Foreach ($language in $ArrayParameter)
   {        
      $LanguageLocation = "$PrimerRoot" + "\" + "$language"
      Set-Location -Path $LanguageLocation
      gitbook init
      gitbook install
      gitbook build
      
      if($LASTEXITCODE -ne 0)
      {
         throw "The content generation failed"
      }
      
      gitbook pdf . .\_book\Appendix\DynamoPrimer.pdf
      
      if($LASTEXITCODE -ne 0)
      {
         throw "The PDF generation failed"
      }
   }
}
catch
{
	Write-Host $error[0]
	throw $LASTEXITCODE
}
