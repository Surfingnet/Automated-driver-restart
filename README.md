# Automated-driver-restart
A powershell script to restart a driver easily, and a batch file to run the script in one click.

# Instructions
How to get the driver ID:
-open a powershell terminal as admin
-execute this command: Get-PnpDevice | Format-Table -Property FriendlyName,InstanceId
(you can copy the command here then right clic in the terminal to paste it)
(if the ID's do not fit in the window, if they are shortened, simply resize the terminal to make it wider then run the command again)
-copy the ID that's on the right side of the driver you want to restart
(to copy from the terminal simply left clic and drag on what you want to copy as if you wanted to select the text)
example: PCI\VEN_8086&DEV_15F1&SUBSYS_E0001342&REV_03\12D23DFFFFD491F300

How to set the driver ID in the script:
-paste it in the ps1 file at the first line. (keep the quotation marks)

How to use:
-execute the .bat file or double-clic on a shortcut to it
-or you can execute the ps1 script from a powershell terminal with admin rights
