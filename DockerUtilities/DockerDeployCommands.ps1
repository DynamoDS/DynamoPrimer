<#
   Date: 29/11/2019
   Purpose: Run the deploy commands inside container.
#>
param($language, $accessKey, $secretKey)

$ErrorActionPreference = "Stop"

# DynamoPrimer´s location
$PrimerRoot = "c:\WorkspacePrimer"

#AWS variables
$AWSPowerShellProfile = "MyNewProfile"
$AWSRegion = "us-west-1"
$AWSBucketName = "testprimeglb"

#AWS new profile
Set-AWSCredential `
                 -AccessKey $accessKey `
                 -SecretKey $secretKey `
                 -StoreAs $AWSPowerShellProfile

#AWS default configuration
Initialize-AWSDefaultConfiguration -ProfileName $AWSPowerShellProfile -Region $AWSRegion

#Set credentials
Set-AWSCredential -ProfileName $AWSPowerShellProfile

if($language == "en"){
   $array = @("Archive", "en", "gitbook","images", "styles", "index.html")
   
} else {

   $objectList = Get-S3Object -BucketName $AWSBucketName

   foreach($myObject in $objectList){
      Remove-S3Object -BucketName $AWSBucketName -Key $myObject.Key -Force
   }

   #Write-S3Object -BucketName testprimeglb -Folder C:\Repositorios\GitHub\jesusHCG\DynamoPrimer\images -KeyPrefix test/mytest/
   
}
