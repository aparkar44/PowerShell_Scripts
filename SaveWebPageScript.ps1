$url = "https://www.google.com"

$outputFile = "C:\Abraar Parkar\PowerShell_Scripts\Google.html"

Invoke-WebRequest -Uri $url -OutFile $outputFile