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
   #If not english deleted everything in the Prefix
   $objectList = Get-S3Object -BucketName $AWSBucketName -Prefix $language
   foreach($myObject in $objectList){
      Remove-S3Object -BucketName $AWSBucketName -Key $myObject.Key -Force
   }

   #Get all files and upload
   $results = Get-ChildItem "$PrimerRoot\$language" -File -Recurse
   Write-Host "Uploading ..."
   foreach ($path in $results) {
      $localPath = $path.FullName.Replace("$PrimerRoot\$language\","")
         
      $keyPath = $localPath.Replace("\","/")
      
      Write-S3Object -BucketName $AWSBucketName -File $path.FullName -Key "$language/$keyPath"
   }
   Write-Host "Upload complete"
}
