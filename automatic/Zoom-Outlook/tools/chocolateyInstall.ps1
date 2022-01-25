$ErrorActionPreference = 'Stop'
 
$checksum = 'c7718e1f5667c01a863433e6f72b90ae1cea6a6f2555e6c44858358f79e98350'
$url = 'https://zoom.us/client/5.9.3.23/ZoomOutlookPluginSetup.msi'

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
