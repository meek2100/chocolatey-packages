$ErrorActionPreference = 'Stop'
 
$checksum = '224de8384df136c55d622680a98c67f3f9ce39aa3fae23a5110c0f14f29a0a1e'
$url = 'https://zoom.us/client/6.1.0.1043/ZoomOutlookPluginSetup.msi'

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
