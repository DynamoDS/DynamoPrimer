param(
    [string[]]$ArrayParameter=@(), 
    $pdfcompress_colorimageresolution, 
    $pdfcompress_pdfsettings, 
    $pdfcompress_device, 
    $PrimerRoot
)
$ErrorActionPreference = "Stop"

try {
        
    if($ArrayParameter.length -gt 1)
    {
        Foreach ($language in $ArrayParameter)
        {
            $InputFile = "$PrimerRoot\$language\_book\Appendix\DynamoPrimer.pdf"
            $OutputFile = "$PrimerRoot\$language\_book\Appendix\DynamoPrimer-Print.pdf"

            & gswin64c.exe -dColorImageResolution="$pdfcompress_colorimageresolution" -dPDFSETTINGS=/"$pdfcompress_pdfsettings" -dBATCH -dNOPAUSE -sDEVICE="$pdfcompress_device" -sOutputFile="$OutputFile" "$InputFile"

            if($LASTEXITCODE -ne 0)
            {
                throw "The PDF compression failed"
            }

            Remove-Item -Force -Path $InputFile
        }
    }else 
    {
        $InputFile = "$PrimerRoot\$language\_book\Appendix\DynamoPrimer.pdf"
        $OutputFile = "$PrimerRoot\$language\_book\Appendix\DynamoPrimer-Print.pdf"

        & gswin64c.exe -dColorImageResolution="$pdfcompress_colorimageresolution" -dPDFSETTINGS=/"$pdfcompress_pdfsettings" -dBATCH -dNOPAUSE -sDEVICE="$pdfcompress_device" -sOutputFile="$OutputFile" "$InputFile"

        if($LASTEXITCODE -ne 0)
        {
            throw "The PDF compression failed"
        }

        Remove-Item -Force -Path $InputFile
    }

}
catch {
    Write-Host $error[0]
	throw $LASTEXITCODE
}