$ErrorActionPreference = 'Stop'
 
$checksum = '4b1583351ceb8944356310345f1c3b6bd431099e2b61acc389c31e30b64f3ac3'
$url = 'https://zoom.us/client/5.15.5.926/ZoomOutlookPluginSetup.msi'

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
