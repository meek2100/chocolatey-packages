$ErrorActionPreference = 'Stop'
 
$checksum = 'cfa2b778a86dbd082cae5270d4329504ef457ec7594a96b592ac196f116da127'
$url = 'https://zoom.us/client/6.3.6.1079/ZoomOutlookPluginSetup.msi'

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
