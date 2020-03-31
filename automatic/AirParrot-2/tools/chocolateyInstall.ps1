$ErrorActionPreference = 'Stop'
$checksum = '13c785ec471db1a83e8056869a16cd7a38b36159e88e2770718753d19d994bab'
$url = 'http://download.airsquirrels.com/AirParrot2/Windows/AirParrot2.7.5-64.msi'

$packageArgs = @{
  packageName    = 'airparrot-2'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'msi'
  url            = $url
  silentArgs     = '/quiet /norestart'
  validExitCodes = @(0)
  softwareName   = 'airparrot-2*'
  checksum       = $checksum
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
