$ErrorActionPreference = 'Stop'
 
$checksum = '8ce93c302327911c6ffdb299ebb6b92a5bcf83f1c4f2490be6cb3e16ed0d477d'
$url = 'https://zoom.us/client/6.6.10.1192/ZoomOutlookPluginSetup.msi'

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
