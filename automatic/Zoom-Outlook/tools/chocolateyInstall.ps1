$ErrorActionPreference = 'Stop'
 
$checksum = 'c0b486509713adca858f714e26af068ecd7cb71a1b1b98b615fbd847f421c43f'
$url = 'https://zoom.us/client/5.17.10.1010/ZoomOutlookPluginSetup.msi'

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
