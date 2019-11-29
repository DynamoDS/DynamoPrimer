<#
   Date: 29/11/2019
   Purpose: Run the deploy commands inside container.
#>
param($language)

$ErrorActionPreference = "Stop"

# DynamoPrimer´s location
$PrimerRoot = "c:\WorkspacePrimer"

if($language == "en"){
   $array = @("Archive", "en", "gitbook","images", "styles", "index.html")
   
} else {
   
}
