$ErrorActionPreference = 'Stop'
 
$checksum = 'bc2268c6c42b02d1bcad94206aec45f896c310c1255f1685f71027f0a801ad2b'
$url = 'https://zoom.us/client/5.4.59217.1204/ZoomOutlookPluginSetup.msi'

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
