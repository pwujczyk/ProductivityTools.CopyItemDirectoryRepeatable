<!--Category:Powershell--> 
 <p align="right">
    <a href="https://www.powershellgallery.com/packages/ProductivityTools.CopyItemDirectoryRepeatable/"><img src="Images/Header/Powershell_border_40px.png" /></a>
    <a href="http://productivitytools.tech/copy-itemdirectoryrepeatable/"><img src="Images/Header/ProductivityTools_green_40px_2.png" /><a> 
    <a href="https://github.com/pwujczyk/ProductivityTools.CopyItemDirectoryRepeatable"><img src="Images/Header/Github_border_40px.png" /></a>
</p>
<p align="center">
    <a href="http://productivitytools.tech/">
        <img src="Images/Header/LogoTitle_green_500px.png" />
    </a>
</p>

# Copy Item Directory Repeatable

In PowerShell Copy-Item bahaves differently when target folder exists and different when not. Module provides functionality which is idempotent.
<!--more-->

When you are using Copy-Item the destination doesn’t exist it assumes you’re trying to copy/rename the source to be the destination, whereas if the destination exists it assumes you’re trying to copy underneath it. This results sometimes in copying directory to requested destination and sometimes to folder inside it.

Example below visualize the situation. Initial state: 

![](Images/Copy1.png)

After first Copy-Item invocation.

```powershell
Copy-Item D:\Trash\Test\ D:\Trash\TestDest\Test -Recurse -Force
```

TestElement directory is copied under Test directory.

![](Images/Copy2.png)

And after second Copy-Item invocation whole Test directory is copied to target Test.

```powershell
Copy-Item D:\Trash\Test\ D:\Trash\TestDest\Test -Recurse -Force
```
<!--og-image-->
![](Images/Copy3.png)


Following module helps when you would like to copy content of one folder to other and always have the same result every time.
