<#
   Date: 21/11/2019
   Purpose: Run the commands inside container.
#>
$ErrorActionPreference = "Stop"

# DynamoPrimer´s location
$PrimerRoot = "c:\WorkspacePrimer"

Copy-Item "$PrimerRoot\.npmrc" -Destination "C:\Users\ContainerAdministrator"

npm install gitbook-cli -g

$array = @("de", "en", "ja","zh-tw")
for ($i=0; $i -lt $array.length; $i++) {
   $NewLocation = "$PrimerRoot" + "\" + $array[$i];
   Set-Location $NewLocation
   gitbook init
   gitbook install
   gitbook build
   gitbook pdf . .\_book\Appendix\DynamoPrimer.pdf
}
