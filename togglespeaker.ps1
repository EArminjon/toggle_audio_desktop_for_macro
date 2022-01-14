$Current = Get-AudioDevice -Playback
$Devices = Get-AudioDevice -List
$PrimaryDeviceName = 'Haut-parleurs (Logitech PRO X Gaming Headset)'
$SecondaryDeviceName = 'Haut-parleurs (Realtek(R) Audio)'
$PrimaryDevice = ''
$SecondaryDevice = ''

<# Search Device #>
<# Note: GHUB will change its device ID every update, this is why I didn't use hard coded ID #>
ForEach ($Device in $Devices)
{
    if ($Device.Name -eq $PrimaryDeviceName)
    {
        Write-Output($Device)
        $PrimaryDevice = $Device
    }
    ElseIf ($Device.Name -eq $SecondaryDeviceName)
    {
        Write-Output($Device)
        $SecondaryDevice = $Device
    }
}

if ($Current.Name -eq $PrimaryDevice.name)
{
    Set-AudioDevice $SecondaryDevice.ID
}

ElseIf ($Current.Name -eq $SecondaryDevice.name)
{
    Set-AudioDevice $PrimaryDevice.ID
}
