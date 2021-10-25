$ErrorActionPreference = 'Stop'
 
$checksum = '0e72b9c12fc00453111731bb1d75075f63cc03c74f18a1da4a552e9e27c8d964'
$url = 'https://zoom.us/client/5.8.3.13/ZoomOutlookPluginSetup.msi'

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
