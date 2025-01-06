$ErrorActionPreference = 'Stop'
 
$checksum = '0827911a8dc971856f2e3d692d055ae163c9334308feb88da0a97d5a49350bc0'
$url = 'https://zoom.us/client/6.3.5.1078/ZoomOutlookPluginSetup.msi'

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
