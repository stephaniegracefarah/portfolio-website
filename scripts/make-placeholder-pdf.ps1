# Builds a tiny, spec-valid single-page PDF with the given title text.
# Usage: .\make-placeholder-pdf.ps1 -Text "Placeholder resume" -OutFile ..\resume.pdf
param(
  [Parameter(Mandatory = $true)][string]$Text,
  [Parameter(Mandatory = $true)][string]$OutFile
)

$enc = [System.Text.Encoding]::ASCII
$nl = "`n"

$streamContent = "BT /F1 14 Tf 40 150 Td ($Text) Tj ET"
$streamLen = $enc.GetByteCount($streamContent)

$objects = @(
  "1 0 obj`n<< /Type /Catalog /Pages 2 0 R >>`nendobj",
  "2 0 obj`n<< /Type /Pages /Kids [3 0 R] /Count 1 >>`nendobj",
  "3 0 obj`n<< /Type /Page /Parent 2 0 R /MediaBox [0 0 200 200] /Resources << /Font << /F1 4 0 R >> >> /Contents 5 0 R >>`nendobj",
  "4 0 obj`n<< /Type /Font /Subtype /Type1 /BaseFont /Helvetica >>`nendobj",
  "5 0 obj`n<< /Length $streamLen >>`nstream`n$streamContent`nendstream`nendobj"
)

$header = "%PDF-1.4$nl"
$body = New-Object System.Collections.Generic.List[byte]
$offsets = @()

$bytes = $enc.GetBytes($header)
$body.AddRange($bytes)

foreach ($obj in $objects) {
  $offsets += $body.Count
  $objBytes = $enc.GetBytes($obj + $nl)
  $body.AddRange($objBytes)
}

$xrefOffset = $body.Count
$xref = "xref`n0 6`n0000000000 65535 f `n"
foreach ($off in $offsets) {
  $xref += ("{0:D10} 00000 n `n" -f $off)
}
$trailer = "trailer`n<< /Size 6 /Root 1 0 R >>`nstartxref`n$xrefOffset`n%%EOF"

$body.AddRange($enc.GetBytes($xref))
$body.AddRange($enc.GetBytes($trailer))

[System.IO.File]::WriteAllBytes($OutFile, $body.ToArray())
Write-Output "Wrote $OutFile ($($body.Count) bytes)"
