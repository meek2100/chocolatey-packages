$ErrorActionPreference = 'Stop'
$checksum = 'd796101afd84774af6aabf87bc32c240182243772afc050703fbc0972f6cf953'
$url = 'https://download.airsquirrels.com/AirParrot3/Windows/AirParrot-3.1.1-32.msi'
$checksum64 = 'aed17cc8e8c5d9050de07a613ff909ffaa7e716cf7b9a34479fd42aa8e187fa9'
$url64 = 'https://download.airsquirrels.com/AirParrot3/Windows/AirParrot-3.1.1-64.msi'

$packageArgs = @{
  packageName    = 'AirParrot-3'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = '/quiet /norestart'
  validExitCodes = @(0)
  softwareName   = 'AirParrot 3*'
  checksum       = $checksum
  checksumType   = 'sha256'
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
