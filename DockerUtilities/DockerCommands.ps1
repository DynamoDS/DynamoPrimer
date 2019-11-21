<#
   Date: 21/11/2019
   Purpose: Run the commands inside container.
#>
$ErrorActionPreference = "Stop"

# Dynamo's location
$PrimerRoot = "c:\WorkspacePrimer"

Set-Location -Path "$PrimerRoot\en"

gitbook init
gitbook install
gitbook build
gitbook pdf . .\_book\Appendix\DynamoPrimer.pdf