$ErrorActionPreference = 'Stop'
 
$checksum = 'eb86242503446e53b2114380605be8f10d2e3ceb87ff355f6c0ccf88814ec337'
$url = 'https://zoom.us/client/6.0.0.1012/ZoomOutlookPluginSetup.msi'

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
