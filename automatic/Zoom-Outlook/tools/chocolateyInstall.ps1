$ErrorActionPreference = 'Stop'
 
$checksum = '2065228f94b975f0d86e228353c4eaa629b699c3082915a6e21e3ba6bef11a18'
$url = 'https://zoom.us/client/5.9.0.19/ZoomOutlookPluginSetup.msi'

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
