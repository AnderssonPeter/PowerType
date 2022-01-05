$files = ls (Join-Path $PSScriptRoot "*.xml")
$transformationFile = Join-Path $PSScriptRoot "asciidoc.to.dictionary.xlts"
$xslt = New-Object System.Xml.Xsl.XslCompiledTransform

Write-Host "Loading transformation file"
$xsltSettings = New-Object System.Xml.Xsl.XsltSettings($true, $true)
$xsltResolver = New-Object System.Xml.XmlUrlResolver
$xslt.Load($transformationFile, $xsltSettings, $xsltResolver)
$result = ""
foreach ($file in $files)
{
	Write-Host "Processing $file"
	$inputStream = [System.IO.File]::OpenRead($file.FullName)
	$reader = New-Object System.Xml.XmlTextReader($inputStream)
	$reader.DtdProcessing = [System.Xml.DtdProcessing]::Ignore
	
	$outputStream = New-Object System.IO.MemoryStream
	$writer = New-Object System.Xml.XmlTextWriter($outputStream, [System.Text.Encoding]::UTF8)
	Write-Host "Transforming"
	$xslt.Transform($reader, $writer)
	$writer.Flush();
	$content = $outputStream.ToArray()
	$contentString = [System.Text.Encoding]::UTF8.GetString($content);
	$result += $contentString + "`n"
	$outputStream.Dispose()
	$inputStream.Dispose()
}

Write-Host "Writing"
$outputPath = Join-Path $PSScriptRoot "output.ps1"
Set-Content $outputPath $result