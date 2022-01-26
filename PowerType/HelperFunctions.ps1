#This file contains functions that are available to all dictionaries
function Find-FileRecursive ($path, $file) {
	while (Test-Path $path)
	{
		$filePath = Join-Path $path $file
		if (Test-Path $filePath -PathType Leaf) {
			$filePath
			break
		}
		$path = Split-Path $path -Parent
	}
}


function Find-DirectoryRecursive ($path, $file) {
	while (Test-Path $path)
	{
		$filePath = Join-Path $path $file
		if (Test-Path $filePath -PathType Container) {
			$filePath
			break
		}
		$path = Split-Path $path -Parent
	}
}
