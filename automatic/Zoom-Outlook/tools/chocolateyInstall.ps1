$ErrorActionPreference = 'Stop'
 
$checksum = 'aed0c8d3b9aad71d6d01ccc7d0ca0684054e5bdb7522d08215a4274611ba6756'
$url = 'https://zoom.us/client/5.0.25583.0521/ZoomOutlookPluginSetup.msi'

$packageArgs = @{
  packageName    = 'Zoom-Outlook'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'msi'
  url            = $url
  silentArgs     = '/quiet /norestart'
  validExitCodes = @(0)
  softwareName   = 'Zoom Outlook*'
  checksum       = $checksum
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
