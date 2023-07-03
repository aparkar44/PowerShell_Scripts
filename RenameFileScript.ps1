$filePath = "C:\Abraar Parkar\PowerShell_Scripts\WritingContent.txt"

Rename-Item -Path $filePath -NewName "PowerShellTextFile.txt"

Write-Host "File was renamed successfully"