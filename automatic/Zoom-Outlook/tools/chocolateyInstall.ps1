$ErrorActionPreference = 'Stop'
 
$checksum = '4801f112df14d17303e676eebcdd023a967f1041d76dedf4881111c6a0cd4e4b'
$url = 'https://zoom.us/client/5.13.5.783/ZoomOutlookPluginSetup.msi'

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
