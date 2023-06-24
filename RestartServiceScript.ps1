# Specify the name of the service to restart

$serviceName = "Notepad"

# Check if the service is running 
if((Get-Service -Name $serviceName).Status -eq "Running"){
    # Restart the service

    Restart-Service -Name $serviceName
    Write-Host "Service '$serviceName' has been restarted successfully."
} else {
    Write-Host "Service '$serviceName' is not currently running."
}