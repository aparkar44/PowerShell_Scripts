$filePath = "C:\Abraar Parkar\PowerShell_Scripts\PowerShellTextFile.txt"

$content = Get-Content -Path $filePath

$newContent = $content -replace "Content was written in this text file", "This file will be uploaded on GitHub"

$newContent | Set-Content -Path $filePath

Write-Host "Content in the file was updated with: $newContent"