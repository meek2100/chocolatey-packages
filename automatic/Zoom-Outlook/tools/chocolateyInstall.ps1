$ErrorActionPreference = 'Stop'
 
$checksum = 'c1c3829bdfa93e3fdd83fa8e317bd653617b5978e9ee6be5a1bba66a9d9452f2'
$url = 'https://zoom.us/client/5.13.10.810/ZoomOutlookPluginSetup.msi'

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
