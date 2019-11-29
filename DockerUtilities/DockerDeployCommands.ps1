<#
   Date: 29/11/2019
   Purpose: Run the deploy commands inside container.
#>
param($language)

$ErrorActionPreference = "Stop"

# DynamoPrimer´s location
$PrimerRoot = "c:\WorkspacePrimer"

#AWS variables
$AWSPowerShellProfile = "MyNewProfile"
$AWSRegion = "us-west-1"

#AWS default configuration
Initialize-AWSDefaultConfiguration -ProfileName $AWSPowerShellProfile -Region $AWSRegion

#Set credentials
Set-AWSCredential -ProfileName $AWSPowerShellProfile



if($language == "en"){
   $array = @("Archive", "en", "gitbook","images", "styles", "index.html")
   
} else {
   
}
