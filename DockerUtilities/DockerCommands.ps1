<#
   Date: 21/11/2019
   Purpose: Run the commands inside container.
#>
$ErrorActionPreference = "Stop"

# DynamoPrimer´s location
$PrimerRoot = "c:\WorkspacePrimer"

Copy-Item "$PrimerRoot\.npmrc" -Destination "C:\Users\ContainerAdministrator"

npm install gitbook-cli -g

Set-Location -Path "$PrimerRoot\en"

gitbook init
gitbook install
gitbook build
gitbook pdf . .\_book\Appendix\DynamoPrimer.pdf