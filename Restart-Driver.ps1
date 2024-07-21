$DeviceInstanceId = "paste the id here"

function Disable-Device {
    param (
        [string]$DeviceInstanceId
    )

    $device = Get-PnpDevice | Where-Object { $_.InstanceId -eq $DeviceInstanceId -and $_.Status -eq "OK" }
    if ($device) {
        Disable-PnpDevice -InstanceId $device.InstanceId -Confirm:$false
    } else {
        Write-Host "Device not found or already disabled."
    }
}

function Enable-Device {
    param (
        [string]$DeviceInstanceId
    )

    $device = Get-PnpDevice | Where-Object { $_.InstanceId -eq $DeviceInstanceId -and $_.Status -ne "OK" }
    if ($device) {
        Enable-PnpDevice -InstanceId $device.InstanceId -Confirm:$false
    } else {
        Write-Host "Device not found or already enabled."
    }
}

Disable-Device -DeviceInstanceId $DeviceInstanceId
Start-Sleep -Seconds 3
Enable-Device -DeviceInstanceId $DeviceInstanceId
