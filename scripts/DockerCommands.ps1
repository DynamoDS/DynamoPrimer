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
   $ndOutPut = & node -v | Out-String
   $ndOutPut = $ndOutPut -replace "v"
   $nodeVersion = [System.Version]::Parse($ndOutPut).Major
   $pathjs = "$env:APPDATA\npm\node_modules\gitbook-cli\node_modules\npm\node_modules\graceful-fs\polyfills.js"

   #if Node version is greater than 6 the patch will be applied
   if($nodeVersion -gt 6 && Test-Path -Path $pathjs)
   {
      Write-Output "Patch for Node12: $pathjs"

      (Get-Content -Path $pathjs) | ForEach-Object {$_ -Replace 'fs.stat =', '// fs.stat =' ` -Replace 'fs.fstat =', '// fs.fstat =' ` -Replace 'fs.lstat =', '// fs.lstat ='} | Set-Content -Path $pathjs -Encoding utf8 -Force
   }

   #Copy npmrc with ADSK registry
   Copy-Item -Path $env:USERPROFILE\.npmrc -Destination $PrimerRoot

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
