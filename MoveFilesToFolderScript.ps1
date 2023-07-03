$sourceFolder = "C:\Abraar Parkar\PowerShell_Scripts"
$destinationFolder = "C:\Abraar Parkar\PowerShell_Scripts\ServiceBasedScripts"
$fileName = "RestartServiceScript.ps1"

$sourcePath = Join-Path -Path $sourceFolder -ChildPath $fileName
$destinationPath = Join-Path -Path $destinationFolder -ChildPath $fileName

Move-Item -Path $sourcePath -Destination $destinationPath
Write-Host "Moved File: $sourcePath to: $destinationPath"
