clear
cd $PSScriptRoot
Import-Module .\ProductivityTools.PSCopyItemDirectoryRepeatable.psm1 -Force
Copy-ItemDirectoryRepeatable "d:\OneDrive\Favorites\" "D:\Trash\CX4" -verbose -Recurse