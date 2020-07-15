$ErrorActionPreference = "Stop"

try {

    Write-Host "Looking for docker process"
    $processes = Get-Process "*docker desktop*"
    if ($processes.Count -gt 0)
    {
        Write-Host "Docker desktop found"
        $processes[0].Kill()
        $processes[0].WaitForExit()
    }

    Write-Host "Starting again Docker Desktop"
    Start-Process "$env:ProgramFiles\Docker\Docker\Docker Desktop.exe" # -Verb RunAs

    Write-Host "Giving some time to Docker desktop"
    Start-Sleep -Seconds 30

    Write-Host "Cleaning the containers that are not started"
    docker container prune -f
}
catch {
    Write-Host $error[0]
	throw $LASTEXITCODE
}