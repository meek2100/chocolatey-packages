$ErrorActionPreference = 'Stop'
$checksum = '655384e519075d821816f48d8a94e518402474730d11ac6ac63c0cc5de947341'
$url = 'https://download.airsquirrels.com/AirParrot3/Windows/AirParrot-3.1.6-32.msi'
$checksum64 = '1a024cac1e508a242e547a3cddc5e08bda92fba0582e7d23d86e61cc26cf7c0f'
$url64 = 'https://download.airsquirrels.com/AirParrot3/Windows/AirParrot-3.1.6-64.msi'

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
