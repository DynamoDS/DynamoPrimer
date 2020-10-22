<#
   Purpose: Pull of the source from git
#>
$ErrorActionPreference = "Stop"

try {

    #Redirecting GIT output
    $env:GIT_REDIRECT_STDERR = '2>&1'

    if ([string]::IsNullOrWhiteSpace($env:URL_REPO_TOOLS) -or [string]::IsNullOrWhiteSpace($env:BRANCH_TOOLS)) 
    {
        throw "The tool repository parameters had not been set properly"
    }
    else 
    {
        git clone -b $env:BRANCH_TOOLS "$env:URL_REPO_TOOLS" "$env:WORKSPACE\$env:COMMON_RESOURCES_DIR"

        if($LASTEXITCODE -ne 0)
        {
            throw "The download of the resources failed"
        }
    }
    
}
catch {
    Write-Host $error[0]
	throw $LASTEXITCODE    
}
