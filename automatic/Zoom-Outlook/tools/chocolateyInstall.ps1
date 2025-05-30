$ErrorActionPreference = 'Stop'
 
$checksum = '6380bb6294c28fc45e41a1a28fe344ebbca65a147d095bd25054fed39046c13a'
$url = 'https://zoom.us/client/6.4.10.1134/ZoomOutlookPluginSetup.msi'

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
