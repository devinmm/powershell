$ServiceName = 'VMTools'
$arrService = Get-Service -Name $ServiceName

while ($true)
{

    if ($arrService.Status -ne 'Running'){
        Start-Service $ServiceName
        write-host $arrService.status
        write-host 'Service starting'
    }
    
    Start-Sleep -seconds 600
    $arrService.Refresh()
    if ($arrService.Status -eq 'Running')
    {
        Write-Host 'Service is Running'
    }

}