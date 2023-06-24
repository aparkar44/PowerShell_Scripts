# Specify the path of the folder to archive

$folderPath = "C:\Abraar Parkar\NewFolder"

# Specify the path and name of the archive file

$archivePath = "C:\Users\Abraar Parkar\Desktop\Archive.zip"

# Check if the folder exists
if(Test-Path $folderPath){
    # Create the archive
    Compress-Archive -Path $folderPath -DestinationPath $archivePath -Force
    Write-Host "Folder archived successfully."
} else {
    Write-Host "Folder does not exist."
}