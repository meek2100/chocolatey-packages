$ErrorActionPreference = 'Stop'
 
$checksum = '4d5089bbd1bb40198f4d4813ac5f579530f10ef23a361340f9fe6b4692695bed'
$url = 'https://zoom.us/client/6.6.0.1185/ZoomOutlookPluginSetup.msi'

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
