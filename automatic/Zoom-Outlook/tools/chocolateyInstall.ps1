$ErrorActionPreference = 'Stop'
 
$checksum = '07fb6438bf2d3071495a6d4edad466ac9d12a1a037e0fe9b6cdd1e7d0c8c77a5'
$url = 'https://zoom.us/client/5.17.0.978/ZoomOutlookPluginSetup.msi'

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
