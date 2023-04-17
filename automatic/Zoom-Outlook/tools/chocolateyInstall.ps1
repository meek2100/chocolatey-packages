$ErrorActionPreference = 'Stop'
 
$checksum = 'ca97d03590ba936ced5a8406cd1924cef89930276d64bbf0024a3eafd68f04bc'
$url = 'https://zoom.us/client/5.14.5.851/ZoomOutlookPluginSetup.msi'

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
