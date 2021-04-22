function Copy-ItemDirectoryRepeatable {

	[cmdletbinding()]
	param ([string]$LiteralPath, [string]$Destination, [switch]$Force, [Switch]$Recurse)
	
	New-Item -Path $Destination -Force -ItemType Directory | Out-Null
	if ($Recurse.IsPresent)
	{
		$sourceItems=Get-ChildItem -Path $LiteralPath
	}
	else {
		$sourceItems=Get-ChildItem -Path $LiteralPath -File
	}
	foreach($item in $sourceItems)
	{
		$source=$item.FullName
		#Get-ChildItem $source
		Copy-Item -LiteralPath $source -Destination $Destination -Force:$Force -Recurse:$Recurse -Verbose:$VerbosePreference 
	}

}