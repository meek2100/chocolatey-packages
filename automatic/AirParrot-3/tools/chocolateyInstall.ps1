$ErrorActionPreference = 'Stop'
$checksum = '6ed4dd85ecc191e1e3fd4418430d6bbb52d984dbd5d7438e057d424868e7f59d'
$url = 'https://download.airsquirrels.com/AirParrot3/Windows/AirParrot-3.1.2-32.msi'
$checksum64 = '4f3b5730fe6f7161bcdbe1b65be235b7bd2a29e6e2ebbf2f7e8099ff7f3626eb'
$url64 = 'https://download.airsquirrels.com/AirParrot3/Windows/AirParrot-3.1.2-64.msi'

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
