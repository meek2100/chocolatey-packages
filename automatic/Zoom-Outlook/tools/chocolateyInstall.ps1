$ErrorActionPreference = 'Stop'
 
$checksum = '92b37132af9a0cc1196cc9e72e4afcf26fa72e9bcdf9170de55b93e32842826a'
$url = 'https://zoom.us/client/7.1.0.1261/ZoomOutlookPluginSetup.msi'

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
