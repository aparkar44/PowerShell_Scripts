# Specify the path and name of the folder to create
$folderPath = "C:\Abraar Parkar\PowerShell_Scripts\ServiceBasedScripts"


# Check if the folder already exists 
if (-not (Test-Path $folderPath)){
    # create the folder
    New-Item -ItemType Directory -Path $folderPath | Out-Null
    Write-Host "Folder Created Successfully."
} else {
    Write-Host "Folder already exists."
}