Write-Host "Enumerating files"
[System.Collections.ArrayList] $files = Get-ChildItem -Filter '*.xml'

$highPriorityCommands = @('add', 'commit', 'checkout', 'stash', 'merge', 'clone', 'rebase', 'status', 'push', 'fetch', 'log', 'diff', 'branch', 'blame', 'cherry-pick', 'revert', 'tag')
$lowPriorityCommands = @('am', 'instaweb', 'bugreport', 'daemon', 'update-server-info', 'format-patch', 'send-email', 'request-pull', 'svn')

for ($i = $highPriorityCommands.length-1; $i -ge 0; $i--) {
	$command = 'git-' + $highPriorityCommands[$i] + '.xml'
	if ($files.Contains($command))
	{
		$files.Remove($command)
		$files.Insert(0, $command)
	}
}

foreach ($lowPriorityCommand in $lowPriorityCommand)
{
	$command = 'git-' + $lowPriorityCommand + '.xml'
	if ($files.Contains($command))
	{
		$files.Remove($command)
		$files.Add($command)
	}
}

$transformationFile = Join-Path $pwd.Path "asciidoc.to.dictionary.xlts"
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
$outputPath = Join-Path $pwd.Path "output.ps1"
Set-Content $outputPath $result
