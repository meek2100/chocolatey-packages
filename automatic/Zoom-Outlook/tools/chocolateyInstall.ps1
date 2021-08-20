$ErrorActionPreference = 'Stop'
 
$checksum = 'b90917191cf07845d4b036ecee8475a8be810e5d6c7c39b3263592392e3b1a8e'
$url = 'https://zoom.us/client/5.7.6.92/ZoomOutlookPluginSetup.msi'

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
