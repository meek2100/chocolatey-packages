$ErrorActionPreference = 'Stop'
$checksum = '8c6a02810088e6b10f134b26e250d553511289ee9825797789292bec6834bc51'
$url = 'https://download.airsquirrels.com/AirParrot3/Windows/AirParrot-3.1.8-32.msi'
$checksum64 = 'd83e6f6781a85514741c6bb8f3ded0ce3db9c8b9c2f3568b4269f1ba4fe122ad'
$url64 = 'https://download.airsquirrels.com/AirParrot3/Windows/AirParrot-3.1.8-64.msi'

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
