$folderPrompt = Read-Host -Prompt 'Enter the folder name'

$folderPath = "C:\Abraar Parkar\$folderPrompt"

if (Test-Path -Path $folderPath -PathType Container) {
    $folderSize = Get-ChildItem -Path $folderPath -Recurse | Measure-Object -Property Length -Sum
    $sizeInBytes = $folderSize.Sum

    Write-Host "Folder size: $sizeInBytes bytes"
    Write-Host "Folder size (in KB): $($sizeInBytes / 1KB) KB"
    Write-Host "Folder size (in MB): $($sizeInBytes / 1MB) MB"
    Write-Host "Folder size (in GB): $($sizeInBytes / 1GB) GB"
} else {
    Write-Host "The specified folder does not exist."
}
