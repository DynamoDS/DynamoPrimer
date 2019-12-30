<#
   Date: 29/11/2019
   Purpose: Run the deploy commands inside container.
#>
param($language, $bucketName, $distributionID)
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
      [string]$s3Prefix, $filter
   )
   if ([string]::IsNullOrEmpty($s3Prefix))
   {
      $objectList = Get-S3Object -BucketName $AWSBucketName | Where $filter
   }
   else
   {
        $objectList = Get-S3Object -BucketName $AWSBucketName -Prefix "$s3Prefix/"
   }
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
      $keyPath = $path.FullName.Replace($localFolderLocation + "\","").Replace("\","/")

      if ([string]::IsNullOrEmpty($s3Prefix))
      {
        UploadS3Object -localPath $path.FullName -prefixWhitPath "$keyPath"
      }
      else
      {      
        UploadS3Object -localPath $path.FullName -prefixWhitPath "$s3Prefix/$keyPath"
      }
   }
   Write-Host "Upload complete for $s3Prefix!" 
}

# DynamoPrimerÃ‚Â´s location
$PrimerRoot = "C:\WorkspacePrimer"

#Vault
$jsonToken = &vault write -address=https://civ1.dv.adskengineer.net:8200 -format=json /account/572569678988/sts/Application-Ops ttl=45m | ConvertFrom-Json
Write-Host $jsonToken.request_id

#AWS variables
$AWSRegion = "us-east-1"
$AWSBucketName = $bucketName

#Set credentials
Set-AWSCredential -AccessKey $jsonToken.data.access_key -SecretKey $jsonToken.data.secret_key -SessionToken $jsonToken.data.security_token

#Remove languge folder.
Write-Host "Removing language old content ..."
RemoveS3Folder -s3Prefix "$language"
#Get all files and upload
Write-Host "Uploading language new content ..."
UploadS3Folder -localFolderLocation "$PrimerRoot\$language\_book" -s3Prefix "$language"

if($language -eq "en"){
   $filter = {($_.Key -NotLike "en/*" -and $_.Key -NotLike "de/*" -and $_.Key -NotLike "ja/*" -and $_.Key -NotLike "zh-tw/*")}
   Write-Host "Updating root content folders"
   #Remove folders.
   Write-Host "Removing old root content..."
   RemoveS3Folder -s3Prefix $null -filter $filter
   #Get all files and upload
   Write-Host "Uploading root content..."
   UploadS3Folder -localFolderLocation "$PrimerRoot\$language\_book" -s3Prefix $null
}

#Invalidating current CDN content to refresh it
$invalidationLong = [long](Get-Date -Format "yyyddMMHHmm")
New-CFInvalidation -DistributionId $distributionID -InvalidationBatch_CallerReference $invalidationLong -Paths_Item "/*" -Paths_Quantity 1 -Region $AWSRegion
