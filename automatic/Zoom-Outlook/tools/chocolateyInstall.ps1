$ErrorActionPreference = 'Stop'
 
$checksum = 'b1706937b73f35c27b51c4919f387a65492a6ffb58cdd9b071868d2a727df57f'
$url = 'https://zoom.us/client/5.4.58474.1023/ZoomOutlookPluginSetup.msi'

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
