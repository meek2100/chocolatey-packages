$ErrorActionPreference = 'Stop'
 
$checksum = 'f6381fd7b653077999e04fdd21ac9ffe784c89ba3e915c2273668f4d1a9f5d34'
$url = 'https://zoom.us/client/5.14.10.876/ZoomOutlookPluginSetup.msi'

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
