# toggle_audio_desktop_for_macro
A powershell script file to help for creating a macro for your keyboard.  
**Usage example** : Creating a keyboard macro for swapping audio from speaker to headset and from headset to speaker.

## Requirements : 

The script use commands from :  
https://github.com/frgnca/AudioDeviceCmdlets

## Setup

You need to find your device name, use the following command to find your Playback device : 
```
Get-AudioDevice -List
```

Open the script file and edit line 5 and 6 with the correct names :  
```powershell
$PrimaryDeviceName = 'Haut-parleurs (Logitech PRO X Gaming Headset)'
$SecondaryDeviceName = 'Haut-parleurs (Realtek(R) Audio)'
```

## Usage

```
 .\togglespeaker.ps1
 ```
