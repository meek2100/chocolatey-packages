$ErrorActionPreference = 'Stop'
 
$checksum = 'ebef8242f902286bbe156de839eda3db74054e05ee3c6c45fda5bdf9a0f408db'
$url = 'https://zoom.us/client/5.5.12365.0129/ZoomOutlookPluginSetup.msi'

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
