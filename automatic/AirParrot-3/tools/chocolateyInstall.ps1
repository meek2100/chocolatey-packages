$ErrorActionPreference = 'Stop'
$checksum = '6537ff078425dbab04278a1c3bbc457abc78c27c895f1b5d88b04f49f2fbfa52'
$url = 'https://download.airsquirrels.com/AirParrot3/Windows/AirParrot-3.0.0-32.msi'
$checksum64 = 'a5ec3e7fe39922e02b359a81717ad973f290b630247f86020ac66eecc392e18f'
$url64 = 'https://download.airsquirrels.com/AirParrot3/Windows/AirParrot-3.0.0-64.msi'

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
