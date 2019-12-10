<#
   Date: 29/11/2019
   Purpose: Run the deploy commands inside container.
#>
param($language, $bucketName)
$ErrorActionPreference = "Stop"

Function RemoveS3Object {
   param (
      [string]$s3Key
   )
   Write-Host $s3Key
   Remove-S3Object -BucketName $AWSBucketName -Key $s3Key -Force  
}

Function RemoveS3Folder {
   param (
      [string]$s3Prefix
   )
   $objectList = Get-S3Object -BucketName $AWSBucketName -Prefix "$s3Prefix/"
   Write-Host "Deleting $s3Prefix ..."
   foreach($myObject in $objectList){
      RemoveS3Object -s3Key $myObject.Key
   }
   Write-Host "Deletion complete of $s3Prefix!"   
}

Function UploadS3Object {
   param (
      [string]$localPath, [string]$prefixWhitPath
   )
   Write-Host $prefixWhitPath
   Write-S3Object -BucketName $AWSBucketName -File $localPath -Key $prefixWhitPath   
}

Function UploadS3Folder {
   param (
      [string]$localFolderLocation, [string]$s3Prefix
   )
   $results = Get-ChildItem "$localFolderLocation" -File -Recurse
   Write-Host "Uploading $s3Prefix ..."
   foreach ($path in $results) {
      $keyPath = $path.FullName.Replace("$localFolderLocation\","").Replace("\","/")
      UploadS3Object -localPath $path.FullName -prefixWhitPath "$s3Prefix/$keyPath"
   }
   Write-Host "Upload complete for $s3Prefix!" 
}

# DynamoPrimer´s location
$PrimerRoot = "c:\WorkspacePrimer"
$jsonToken = (Get-Content "$PrimerRoot\vault.json" -Raw) | ConvertFrom-Json

#AWS variables
#$AWSRegion = "us-west-1"
$AWSBucketName = $bucketName

#Set credentials
Set-AWSCredential -AccessKey $jsonToken.data.access_key -SecretKey $jsonToken.data.secret_key -SessionToken $jsonToken.data.security_token

#Remove languge folder.
#RemoveS3Folder -s3Prefix "$language"
#Get all files and upload
#UploadS3Folder -localFolderLocation "$PrimerRoot\$language" -s3Prefix "$language"

Write-Host "Uploading indexTest.html ..."
UploadS3Object -localPath "$PrimerRoot\$language\_book\index.html" -prefixWhitPath "indexTest.html"

if($language == "none"){
   $folderList = @("Archive", "gitbook", "images", "styles")
   for ($i=0; $i -lt $folderList.length; $i++) {
      $currentFolder = $folderList[$i]
      #Remove folder.
      RemoveS3Folder -s3Prefix "$currentFolder"
      #Get all files and upload
      UploadS3Folder -localFolderLocation "$PrimerRoot\$language\_book\$currentFolder" -s3Prefix "$currentFolder"
   }

   Write-Host "Deleting index.html ..."
   RemoveS3Object -s3Key "index.html"
   Write-Host "Deletion complete of index.html!"

   Write-Host "Uploading index.html ..."
   UploadS3Object -localPath "$PrimerRoot\$language\_book\index.html" -prefixWhitPath "index.html"
   Write-Host "Upload complete for index.html!"
}
