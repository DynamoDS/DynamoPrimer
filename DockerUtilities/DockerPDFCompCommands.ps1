param(
    [string[]]$ArrayParameter=@(), 
    $pdfcompress_colorimageresolution, 
    $pdfcompress_pdfsettings, 
    $pdfcompress_device, 
    $PrimerRoot
)
$ErrorActionPreference = "Stop"

try {
        
    Foreach ($language in $ArrayParameter)
    {
        $InputFile = "$PrimerRoot\$language\_book\Appendix\DynamoPrimer.pdf"
        $OutputFile = "$PrimerRoot\$language\_book\Appendix\DynamoPrimer-Print.pdf"

        & gswin64c.exe -dColorImageResolution="$pdfcompress_colorimageresolution" -dPDFSETTINGS=/"$pdfcompress_pdfsettings" -dBATCH -dNOPAUSE -sDEVICE="$pdfcompress_device" -sOutputFile="$OutputFile" "$InputFile"

        Remove-Item -Force -Path $InputFile
    }

}
catch {
    Write-Host $error[0]
	throw $LASTEXITCODE
}