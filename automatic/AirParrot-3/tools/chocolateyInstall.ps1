$ErrorActionPreference = 'Stop'
$checksum = '57837d439447a5077213a08d630a3c7550f77540d4d5c938f94637b63e86ff31'
$url = 'https://download.airsquirrels.com/AirParrot3/Windows/AirParrot-3.1.0-32.msi'
$checksum64 = 'f4b955a5543f11e6de0306fa471aea1941ee78a488ac741942e05de8bdf288df'
$url64 = 'https://download.airsquirrels.com/AirParrot3/Windows/AirParrot-3.1.0-64.msi'

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
