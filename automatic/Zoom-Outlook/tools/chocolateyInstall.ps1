$ErrorActionPreference = 'Stop'
 
$checksum = '7b64c4453a8dc1d8173fcbc9224df53f5c51ae420f1bf49d9f1ca1f7ba27f6ea'
$url = 'https://zoom.us/client/7.2.0.1283/ZoomOutlookPluginSetup.msi'

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
