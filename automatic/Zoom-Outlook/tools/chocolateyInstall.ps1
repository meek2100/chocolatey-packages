$ErrorActionPreference = 'Stop'
 
$checksum = '3d6a9b10f467367b64d769b9284cc7b2d898a899bf10252b4fdfb928ae24f07f'
$url = 'https://zoom.us/client/5.14.6.863/ZoomOutlookPluginSetup.msi'

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
