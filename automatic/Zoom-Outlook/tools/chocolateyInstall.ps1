$ErrorActionPreference = 'Stop'
 
$checksum = '63b6480c46d94b553e366fa80888409149d8cc0f395a3eaf448e02b0faf1ddbe'
$url = 'https://zoom.us/client/5.3.53133.1009/ZoomOutlookPluginSetup.msi'

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
