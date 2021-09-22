$ErrorActionPreference = 'Stop'
 
$checksum = 'b5db7d6c20e1eeec051d14e3721e59d3023059ca8a7bd732ed3497be5141c0db'
$url = 'https://zoom.us/client/5.8.0.11/ZoomOutlookPluginSetup.msi'

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
