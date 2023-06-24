# Specify the folder to delete

$folderPath = "C:\Abraar Parkar"

# Check if the folder exists
if(Test-Path $folderPath){
    # Delete the folder
    
    Remove-Item -Path $folderPath -Recurse -Force
    Write-Host "Folder deleted successfully."
} else {
    Write-Host "Folder does not exist."
}