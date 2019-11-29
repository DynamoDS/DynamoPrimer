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
   #If not english delete everything with this language in the key
   $objectList = Get-S3Object -BucketName $AWSBucketName -Prefix $language
   Write-Host "Deleting ..."
   foreach($myObject in $objectList){
      Write-Host $myObject.Key
      Remove-S3Object -BucketName $AWSBucketName -Key $myObject.Key -Force
   }
   Write-Host "Deletion complete!"
   
   #Get all files and upload
   $results = Get-ChildItem "$PrimerRoot\$language" -File -Recurse
   Write-Host "Uploading ..."
   foreach ($path in $results) {
      $keyPath = $path.FullName.Replace("$PrimerRoot\$language\","").Replace("\","/")
      Write-Host $keyPath
      Write-S3Object -BucketName $AWSBucketName -File $path.FullName -Key "$language/$keyPath"
   }
   Write-Host "Upload complete!"
}
