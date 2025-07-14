$ErrorActionPreference = 'Stop'
 
$checksum = 'a8449f4a7a60e729ff6268da0c7f44e7cea091904efe01b16a7b7239211c9e37'
$url = 'https://zoom.us/client/6.5.5.1172/ZoomOutlookPluginSetup.msi'

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
