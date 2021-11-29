$ErrorActionPreference = 'Stop'
 
$checksum = 'f500f68686ef36ea620331e59eff778d11a0f9010d9fbfc0bf044f72f46cf39f'
$url = 'https://zoom.us/client/5.8.6.17/ZoomOutlookPluginSetup.msi'

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
