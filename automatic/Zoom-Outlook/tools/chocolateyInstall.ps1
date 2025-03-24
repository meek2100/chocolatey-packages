$ErrorActionPreference = 'Stop'
 
$checksum = '3acb73572e9dbbdaa38a3b24ce1199c564aeacd7816aac76f9c2d153575785d4'
$url = 'https://zoom.us/client/6.4.0.1114/ZoomOutlookPluginSetup.msi'

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
