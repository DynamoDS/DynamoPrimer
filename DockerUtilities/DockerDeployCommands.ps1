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
UploadS3Folder("$PrimerRoot\$language", $language)

if($language == "en"){
   $folderList = @("Archive", "gitbook", "images", "styles")
   for ($i=0; $i -lt $folderList.length; $i++) {
      $currentFolder = $folderList[$i]
      #Remove folder.
      RemoveS3Folder($currentFolder)
      #Get all files and upload
      UploadS3Folder("$PrimerRoot\$language\_book\$currentFolder", $currentFolder)
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

Function UploadS3Object($localPath, $prefixWhitPath)
{
   Write-Host $prefixWhitPath
   Write-S3Object -BucketName $AWSBucketName -File $localPath -Key $prefixWhitPath
}

Function UploadS3Folder($localFolderLocation, $s3Prefix)
{
   $results = Get-ChildItem "$localFolderLocation" -File -Recurse
   Write-Host "Uploading $s3Prefix ..."
   foreach ($path in $results) {
      $keyPath = $path.FullName.Replace("$localFolderLocation\","").Replace("\","/")
      UploadS3Object($path.FullName, "$s3Prefix/$keyPath")
   }
   Write-Host "Upload complete for $s3Prefix!"   
}