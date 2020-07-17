
<#This powershell script will copy the third party libraries described below from the DynamoPrimer container to the host computer.
- Calibre v3.48 - ebook-convert
- Ghostscript 9.50 (gs)
- AWS Powershell Modules
- Node.js v6.17 x64 (npm -> node_modules -> gitbook) 
- Vault Libraries
#>

#The container env variables need to be fetch and store them in powershell variables before stoping the container (They are system env variables already created inside the docker container)
$appData= docker exec $env:DOCKER_CONTAINER cmd /C echo "%APPDATA%"
$documentsFolder = docker exec $env:DOCKER_CONTAINER pwsh -Command "[Environment]::GetFolderPath('MyDocuments')"
$programFiles = docker exec $env:DOCKER_CONTAINER cmd /C echo "%PROGRAMFILES%"
$workFolder = $env:WORKSPACE
$gitbookFolders = @(docker exec $env:DOCKER_CONTAINER pwsh -Command "Get-ChildItem -Directory -Path $appData\npm\node_modules\gitbook-cli  | Select FullName -ExpandProperty FullName")
$gitbookNodeModulesFolders = @(docker exec $env:DOCKER_CONTAINER pwsh -Command "Get-ChildItem -Directory -Path $appData\npm\node_modules\gitbook-cli\node_modules | Select FullName -ExpandProperty FullName")
#Check if container is running, then stop it
if (docker inspect -f "{{.State.Running}}" $env:DOCKER_CONTAINER ) 
{
    docker stop $env:DOCKER_CONTAINER
}

#Create the paths to the libraries folders
$ghostScriptLibraries = Join-Path -Path $programFiles -ChildPath "gs\gs9.50"
$calibreLibraries = Join-Path -Path $programFiles -ChildPath "Calibre2"
$vaultLibraries = "C:\Vault"
$PSAWSLibraries = Join-Path -Path $documentsFolder -ChildPath "PowerShell\Modules"

#Creates an String array with all the library paths created previously (CONSIDER THAT THE NODEJS LIBRARIES ARE NOT INCLUDED)
$LibrariesArray = @($ghostScriptLibraries, $calibreLibraries, $vaultLibraries, $PSAWSLibraries)
$librariesFolderPath = Join-Path -Path $workFolder -ChildPath $env:LIBRARIES_FOLDER

#Create a new folder named "$FolderName" in the specified path "$Path", if the folder already exist will just send a message
Function CreateNewFolder([string]$Path, [string]$FolderName) 
{
    $fullPath = Join-Path -Path $Path -ChildPath $FolderName
    if (-not (Test-Path -LiteralPath $fullPath)) 
    {  
        try 
        {
            #This will create a libraries folder in which all the third party libraries will be copied
            New-Item -Path $Path -Name $FolderName  -ItemType "directory"
            Write-Host "New Folder Created: $fullPath"
        }
        catch 
        {
            Write-Host -Message "Unable to create directory '$FolderName'. Error was: $_" -ErrorAction Stop
        }
    }
    else 
    {
        Write-Host -Message "Directory already existed"
    }
}

#Create the folder in which will copy the third_party_libraries
CreateNewFolder $workFolder $env:LIBRARIES_FOLDER
#This folder is where the gitbook-cli subfolders will be copied
CreateNewFolder $workFolder $env:LIBRARIES_FOLDER\"gitbook-cli"

#Check if the folder WSThirdPartyLibraries already exists, then proceed to copy the libraries
if (Test-Path -LiteralPath $librariesFolderPath ) 
{ 
#Copy the folder path (in the array) content from the container to the host
    Foreach ($library in $LibrariesArray)
    {
        docker cp $env:DOCKER_CONTAINER:$library $librariesFolderPath
        Write-Host "Library copied: $library"
    }
}

#This section will copy each subfolder (and it's contents) in the gitbook-cli folder 
Foreach ($subFolder in $gitbookFolders)
{
    #gitbook-cli subfolders
    Write-Host "Library folder copied: $subFolder"
    docker cp $env:DOCKER_CONTAINER:$subFolder $librariesFolderPath\"gitbook-cli"
}

#Copy the each subfolder from the node_modules folder (due that npm folder has large nested subfolders that makes the docker cp crash)
Foreach ($subFolder in $gitbookNodeModulesFolders)
{
    #The npm folder has a very large nested subfolders that make the docker cp command crash
    if ( -not ($subFolder -match "\\npm$"))
    {
        #gitbook-cli\node_modules subfolders
        Write-Host "Library folder copied: $subFolder"
        docker cp $env:DOCKER_CONTAINER:$subFolder $librariesFolderPath\"gitbook-cli\node_modules"
    } 
}

docker start $env:DOCKER_CONTAINER