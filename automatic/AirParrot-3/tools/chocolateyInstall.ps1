$ErrorActionPreference = 'Stop'
$checksum = 'de2bf68e092eb3230ff2888e7d954c385fd4e2d1242bdb96c70f861f19fdbc3f'
$url = 'https://download.airsquirrels.com/AirParrot3/Windows/AirParrot-3.1.4-32.msi'
$checksum64 = 'ee956c18f6d4152648dd61e4eebd13677457269cacb5bc39505f33e61fd1936b'
$url64 = 'https://download.airsquirrels.com/AirParrot3/Windows/AirParrot-3.1.4-64.msi'

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
