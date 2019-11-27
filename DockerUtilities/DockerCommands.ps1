<#
   Date: 21/11/2019
   Purpose: Run the commands inside container.
#>
param($language)

$ErrorActionPreference = "Stop"

# DynamoPrimer´s location
$PrimerRoot = "c:\WorkspacePrimer"
Set-Location "$PrimerRoot" + "\" + "$language";
gitbook init
gitbook install
gitbook build
gitbook pdf . .\_book\Appendix\DynamoPrimer.pdf
