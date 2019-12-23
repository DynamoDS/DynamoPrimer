param($language)
$ErrorActionPreference = "Stop"

$GhostScript = "$env:ProgramFiles\gs\gs9.50\bin\gswin64c.exe"

$InputFile = "C:\WorkspacePrimer\$language\_book\Appendix\DynamoPrimer.pdf"
$OutputFile = "C:\WorkspacePrimer\$language\_book\Appendix\DynamoPrimer-Print.pdf"

& "$GhostScript" -dColorImageResolution=$env:PDFCOMPRESS_COLORIMAGERESOLUTION -dPDFSETTINGS=/$env:PDFCOMPRESS_PDFSETTINGS -dBATCH -dNOPAUSE -sDEVICE=$env:PDFCOMPRESS_DEVICE -sOutputFile="$OutputFile" "$InputFile"

Remove-Item -Force -Path $InputFile
