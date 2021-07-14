$ErrorActionPreference = 'Stop'
 
$checksum = 'b8bcf5a7dabfc0c607975a3308b2d8e2b9bc43668cec66e5995a4dde5e7b985b'
$url = 'https://zoom.us/client/5.7.0.64/ZoomOutlookPluginSetup.msi'

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
