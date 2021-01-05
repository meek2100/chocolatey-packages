$ErrorActionPreference = 'Stop'
 
$checksum = 'e96718407b96c445601c2fbe101e420f5071d9a998cb03f8eb791d6bc2fc8223'
$url = 'https://zoom.us/client/5.4.59734.1218/ZoomOutlookPluginSetup.msi'

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
