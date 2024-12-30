# Automated-driver-restart
A powershell script to restart a driver easily, and a batch file to run the script in one click.
  
# Instructions
## How to get a driver ID:  
  
1. Open a powershell terminal as admin.
  
2. Execute the following command: 

```
Get-PnpDevice | Format-Table -Property FriendlyName,InstanceId
```

> [!NOTE]
> You can copy the command here then right clic in the terminal to paste it.<br>
> If the IDs do not fit in the window (they are shortened) simply resize the terminal to make it wider, then run the command again

3. Copy the ID that's on the right side of the driver you want to restart

> [!NOTE]
> To copy from the terminal, simply left clic and drag the cursor over what you want to copy, as if you only wanted to select the text.
  
Example ID: `PCI\VEN_8086&DEV_15F1&SUBSYS_E0001342&REV_03\12D23DFFFFD491F300` 
  
## How to set the driver ID in the script:  
  
4. Paste it in the ps1 file at the first line. (**keep the quotation marks**)  
  
## How to use:  
  
5. Execute the bat file or double-clic on a shortcut to it. Done! If you wanted you could instead execute the ps1 script from a powershell terminal with admin rights.  
