$websiteUrl = Read-Host -Prompt 'Enter the website URL'

$webRequest = [System.Net.WebRequest]::Create($websiteUrl)
$webRequest.Timeout = 5000  # Set timeout to 5 seconds

try {
    $webResponse = $webRequest.GetResponse()
    $statusCode = $webResponse.StatusCode

    if ($statusCode -eq 'OK') {
        Write-Host "Website is available. Status code: $statusCode"
    } else {
        Write-Host "Website is not available. Status code: $statusCode"
    }

    $webResponse.Close()
} catch {
    Write-Host "Website is not available. Error: $($_.Exception.Message)"
}
