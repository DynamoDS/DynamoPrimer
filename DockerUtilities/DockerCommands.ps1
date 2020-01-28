<#
   Date: 21/11/2019
   Purpose: Run the commands inside container.
#>
#param($language)
param([string[]]$ArrayParameter=@())

$ErrorActionPreference = "Stop"

try
{
   # DynamoPrimer's location
   $PrimerRoot = "c:\WorkspacePrimer"
   Foreach ($language in $ArrayParameter)
   {        
      $LanguageLocation = "$PrimerRoot" + "\" + "$language"
      Set-Location -Path $LanguageLocation
      gitbook init
      gitbook install
      gitbook build
      gitbook pdf . .\_book\Appendix\DynamoPrimer.pdf
   }
}
catch
{
	Write-Host $error[0]
	throw $LASTEXITCODE
}
