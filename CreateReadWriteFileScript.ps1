# File path set to create the file
$filePath = "C:\Abraar Parkar\PowerShell_Scripts\WritingContent.txt"
# Set-Content is for finding the file path and writing content to the file using -Value
Set-Content -Path $filePath -Value $content
# New File Path declared to search for created file and write to it
$filePathForWritingContent = "C:\Abraar Parkar\PowerShell_Scripts\WritingContent.txt"
# Declaring Content that will go in to the file
$content = Get-Content -Path $filePathForWritingContent
# Setting the content that will be written in the text file after it is found
Set-Content -Path $filePathForWritingContent -Value "Content was written in this text file"
# User Output to show if the script was run successfully or not.
Write-Host "Text file created at: $filePath"