$version = '0.8.3'
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

$windowsTools = @('adb', 'ant', 'avdmanager', 'bash', 'brotli', 'calibre', 'carapace', 'cargo', 'chromium', 'circleci', 
				  'code', 'codecov', 'code-insiders', 'conda', 'consul', 'cura', 'curl', 'darktable', 'darktable-cli'
				  'dart', 'deno', 'docker-compose', 'docker', 'doctl', 'elvish', 'faas-cli', 'ffmpeg', 'firefox', 'fish', 
				  'flutter', 'gcloud', 'gh', 'gimp', 'git', 'glab', 'go', 'gofmt', 'google-chrome', 'goreleaser', 'goweight', 
				  'gpg', 'gradle', 'gulp', 'helm', 'helmsman', 'hexchat', 'hugo', 'inkscape', 'java', 'javac', 'julia'
				  'kompose', 'ktlint', 'kubeadm', 'kubectl', 'lf', 'lua', 'make', 'mcomix', 'mdbook', 'meld', 'micro', 
				  'minikube', 'mosh', 'mpv', 'mvn', 'neomutt', 'netcat', 'newman', 'ng', 'node', 'npm', 'nu', 'nvim', 'openscad', 
				  'optipng', 'packer', 'palemoon', 'pandoc', 'picard', 'pip', 'pulumi', 'python', 'qmk', 'qutebrowser', 'ranger', 
				  'restic', 'resume-cli', 'rifle', 'rustc', 'rustup', 'scp', 'sdkmanager', 'semver', 'sftp', 'speedtest-cli', 
				  'ssh', 'starship', 'staticcheck', 'svg-term', 'terraform', 'tesseract', 'tinygo', 'tldr', 'tsc', 'unbrotli', 
				  'upx', 'vagrant', 'vlc', 'waypoint', 'wireshark', 'xonsh', 'youtube-dl')
				  
#Todo: find has ---help verify that its correct (i don't think so)
$linuxOnlyTools = @('conky', 'modprobe')

$toolsToIgnore = @('git')
foreach ($tool in $tools)
{
	if ($tool -in $toolsToIgnore)
	{
		Write-Warning "Skipping $tool"
		continue
	}
	Write-Host "Generating $tool"
	$json = &$carapace $tool export
	$toolDefinition = ConvertFrom-Json $json
	if (!$toolDefinition.LocalFlags -And !$toolDefinition.PersistentFlags -And !$toolDefinition.Commands)
	{
		Write-Warning "Skipping $tool, it has no valid definition"
		continue
	}
	if ($tool -in $windowsTools)
	{
		$toolDefinition | Add-Member NoteProperty Platforms @("All")
	}
	elseif ($tool -in $linuxOnlyTools)
	{
		$toolDefinition | Add-Member NoteProperty Platforms @("Linux")
	}
	else
	{
		$toolDefinition | Add-Member NoteProperty Platforms @("Linux", "MacOS")
	}
	
	if ($toolDefinition.Long -like 'https://*' -or $toolDefinition.Long -like 'http://*')
	{
		$toolDefinition | Add-Member NoteProperty Url $toolDefinition.Long
	}
	
	if ($toolDefinition.Aliases)
	{
		Write-Warning "$tool has Aliases"
	}
	
	$result = $toolDefinition | ConvertFrom-Template -Template $template
	# Force unix lineendings
	$result = $result.Replace("`r`n", "`n")
	$result = Invoke-Formatter $result
	$result | Set-Content "output\$tool.ps1"
	# Trim empty lines
	(Get-Content "output\$tool.ps1") | Where-Object {$_.trim() -ne "" } | Set-Content "output\$tool.ps1"
}