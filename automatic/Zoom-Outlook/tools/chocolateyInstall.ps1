$ErrorActionPreference = 'Stop'
 
$checksum = '6716b2374b1818fdcd8782aa08d42136e25383891e67b922923c4592fd144d3c'
$url = 'https://zoom.us/client/5.17.0.981/ZoomOutlookPluginSetup.msi'

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
