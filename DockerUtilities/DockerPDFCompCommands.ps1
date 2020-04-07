param([string[]]$ArrayParameter=@(), $pdfcompress_colorimageresolution, $pdfcompress_pdfsettings, $pdfcompress_device)
$ErrorActionPreference = "Stop"

$GhostScript = "$env:ProgramFiles\gs\gs9.50\bin\gswin64c.exe"

Foreach ($language in $ArrayParameter)
{
    $InputFile = "C:\WorkspacePrimer\$language\_book\Appendix\DynamoPrimer.pdf"
    $OutputFile = "C:\WorkspacePrimer\$language\_book\Appendix\DynamoPrimer-Print.pdf"

    & "$GhostScript" -dColorImageResolution="$pdfcompress_colorimageresolution" -dPDFSETTINGS=/"$pdfcompress_pdfsettings" -dBATCH -dNOPAUSE -sDEVICE="$pdfcompress_device" -sOutputFile="$OutputFile" "$InputFile"
    Remove-Item -Force -Path $InputFile
}
