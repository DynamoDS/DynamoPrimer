<#
   Date: 21/11/2019
   Purpose: Run the commands inside container.
#>
param($language)

$ErrorActionPreference = "Stop"

try
{
	# DynamoPrimer´s location
   $PrimerRoot = "c:\WorkspacePrimer"
   $LanguageLocation = "$PrimerRoot" + "\" + "$language"
   Set-Location -Path $LanguageLocation
   gitbook init
   gitbook install
   gitbook build
   gitbook pdf . .\_book\Appendix\DynamoPrimer.pdf
   gswin64c.exe -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -dColorImageResolution=125dpi -sOutputFile=.\_book\Appendix\DynamoPrimer-Print.pdf  .\_book\Appendix\DynamoPrimer.pdf
   Remove-Item -Path .\_book\Appendix\DynamoPrimer.pdf

}
catch
{
	Write-Host $error[0]
	throw $LASTEXITCODE
}
