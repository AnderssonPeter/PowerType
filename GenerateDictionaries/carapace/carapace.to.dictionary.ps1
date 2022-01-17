$version = '0.8.2'
$os = 'Windows_x86_64'
$carapace = '.\carapace.exe'


if (Test-Path $carapace) {
	Write-Host 'carapace found no need to download'
}
else {
	$carapaceUrl = "https://github.com/rsteube/carapace-bin/releases/download/v$version/carapace-bin`_$version`_$os.tar.gz"
	Write-Host 'carapace not found downloading, ' $carapaceUrl
	Invoke-WebRequest -Uri $carapaceUrl -OutFile 'carapace.tar.gz'
	Expand-7Zip -ArchiveFileName 'carapace.tar.gz' -TargetPath '.'
	Expand-7Zip -ArchiveFileName 'carapace.tar' -TargetPath '.'
}

$tools = &$carapace --list | % { ($_ -split ' ')[0] }
$templateFile = Join-Path $pwd.Path "carapace.to.dictionary.TextScript"
$template = Get-Content -Raw $templateFile

foreach ($tool in $tools)
{
	Write-Host "Generating $tool"
	$json = &$carapace $tool export
	$toolDefinition = ConvertFrom-Json $json
	$result = $toolDefinition | ConvertFrom-Template -Template $template
	# Force unix lineendings
	$result = $result.Replace("`r`n", "`n")
	$result = Invoke-Formatter $result
	$result | Set-Content "output\$tool.ps1"
	# Trim empty lines
	(Get-Content "output\$tool.ps1") | Where-Object {$_.trim() -ne "" } | Set-Content "output\$tool.ps1"
}