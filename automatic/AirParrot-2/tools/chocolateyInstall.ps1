$ErrorActionPreference = 'Stop'
$checksum = '6410c1b8710913740e8a5e07cd0178abb6546138850949f0e29e0ef28c9c62a0'
$url = 'https://download.airsquirrels.com/AirParrot2/Windows/AirParrot2.7.5-32.msi'
$checksum64 = '13c785ec471db1a83e8056869a16cd7a38b36159e88e2770718753d19d994bab'
$url64 = 'https://download.airsquirrels.com/AirParrot2/Windows/AirParrot2.7.5-64.msi'

$packageArgs = @{
  packageName    = 'airparrot-2'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = '/quiet /norestart'
  validExitCodes = @(0)
  softwareName   = 'airparrot-2*'
  checksum       = $checksum
  checksumType   = 'sha256'
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
