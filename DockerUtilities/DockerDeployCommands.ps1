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

#Remove languge folder.
RemoveS3Folder($language)

#Get all files and upload
$results = Get-ChildItem "$PrimerRoot\$language" -File -Recurse
Write-Host "Uploading ..."
foreach ($path in $results) {
   $keyPath = $path.FullName.Replace("$PrimerRoot\$language\","").Replace("\","/")
   Write-Host $keyPath
   Write-S3Object -BucketName $AWSBucketName -File $path.FullName -Key "$language/$keyPath"
}
Write-Host "Upload complete!"

if($language == "en"){
   $folderList = @("Archive", "gitbook", "images", "styles")
   for ($i=0; $i -lt $folderList.length; $i++) {
      $currentFolder = $folderList[$i]
      #Remove folder.
      RemoveS3Folder($currentFolder)

      #Get all files and upload
      $localEnFolderLocation = "$PrimerRoot\$language\_book\$currentFolder"
      $results = Get-ChildItem $localEnFolderLocation -File -Recurse
      Write-Host "Uploading $currentFolder ..."
      foreach ($path in $results) {
         $keyPath = $path.FullName.Replace("$localEnFolderLocation\","").Replace("\","/")
         Write-Host $keyPath
         Write-S3Object -BucketName $AWSBucketName -File $path.FullName -Key "$currentFolder/$keyPath"
      }
      Write-Host "Upload complete for $currentFolder!"
   }

   Write-Host "Deleting index.html ..."
   Remove-S3Object -BucketName $AWSBucketName -Key "index.html" -Force
   Write-Host "Deletion complete of index.html!"

   Write-Host "Uploading index.html ..."
   Write-S3Object -BucketName $AWSBucketName -File "$PrimerRoot\$language\_book\index.html" -Key "index.html"
   Write-Host "Upload complete for index.html!"
}

Function RemoveS3Object($s3Key)
{
   Write-Host $s3Key
   Remove-S3Object -BucketName $AWSBucketName -Key $s3Key -Force
}

Function RemoveS3Folder($s3Prefix)
{
   $objectList = Get-S3Object -BucketName $AWSBucketName -Prefix "$s3Prefix/"
   Write-Host "Deleting $s3Prefix ..."
   foreach($myObject in $objectList){
      RemoveS3Object($myObject.Key)
   }
   Write-Host "Deletion complete of $s3Prefix!"
}