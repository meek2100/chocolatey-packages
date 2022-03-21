$ErrorActionPreference = 'Stop'
 
$checksum = '000721851fb2abf96bddc4b0e3a820012389347d21d592f7d193abd6914848ac'
$url = 'https://zoom.us/client/5.10.0.30/ZoomOutlookPluginSetup.msi'

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
