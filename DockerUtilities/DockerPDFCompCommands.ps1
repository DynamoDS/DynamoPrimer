param([string[]]$ArrayParameter=@(), $pdfcompress_colorimageresolution, $pdfcompress_pdfsettings, $pdfcompress_device, $PrimerRoot)
$ErrorActionPreference = "Stop"

try {
    
    $GhostScript = "$env:ProgramFiles\gs\gs9.50\bin\gswin64c.exe"

    Foreach ($language in $ArrayParameter)
    {
        $InputFile = "$PrimerRoot\$language\_book\Appendix\DynamoPrimer.pdf"
        $OutputFile = "$PrimerRoot\$language\_book\Appendix\DynamoPrimer-Print.pdf"

        & "$GhostScript" -dColorImageResolution="$pdfcompress_colorimageresolution" -dPDFSETTINGS=/"$pdfcompress_pdfsettings" -dBATCH -dNOPAUSE -sDEVICE="$pdfcompress_device" -sOutputFile="$OutputFile" "$InputFile"
        
        Remove-Item -Force -Path $InputFile
    }

}
catch {
    Write-Host $error[0]
	throw $LASTEXITCODE
}