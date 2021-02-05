$ErrorActionPreference = 'Stop'
$checksum = '445958796c912f4c4e26bc780630c863374363a5684d15c1969d4831c28da4e3'
$url = 'https://download.airsquirrels.com/AirParrot3/Windows/AirParrot-3.1.3-32.msi'
$checksum64 = '8b1063fe3c6f45477360413078249215bee367e068af55181eea0b3a8d55aeb6'
$url64 = 'https://download.airsquirrels.com/AirParrot3/Windows/AirParrot-3.1.3-64.msi'

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
