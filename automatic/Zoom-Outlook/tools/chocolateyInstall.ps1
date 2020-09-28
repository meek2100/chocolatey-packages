$ErrorActionPreference = 'Stop'
 
$checksum = '079845a466e9d76f63d5d85d211058ecce8a02ae88a91c77e01b87ef9dc18114'
$url = 'https://zoom.us/client/5.3.52819.0925/ZoomOutlookPluginSetup.msi'

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
