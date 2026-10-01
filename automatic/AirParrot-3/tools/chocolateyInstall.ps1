$ErrorActionPreference = 'Stop'
$checksum = '165dc79d8a387cf2211bfb67de322189b23af1403a3bd2946facdbc629a720e8'
$url = 'https://download.airsquirrels.com/AirParrot3/Windows/AirParrot-3.1.10-32.msi'
$checksum64 = '74d29ab4ef4f68f6b66809df95a8389cc8abf2e356131093da8dc42b6cc26128'
$url64 = 'https://download.airsquirrels.com/AirParrot3/Windows/AirParrot-3.1.10-64.msi'

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
