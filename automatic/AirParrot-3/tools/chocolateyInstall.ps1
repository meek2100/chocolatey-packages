$ErrorActionPreference = 'Stop'
$checksum = '70ec3afec60f463d68246f4e4becf66694ed1f7ecba56999067e432235155ee5'
$url = 'https://download.airsquirrels.com/AirParrot3/Windows/AirParrot-3.1.7-32.msi'
$checksum64 = '513e084a03b492c2db705096cc88bdc55b3cbb0f3874ebd978f64d546ffe3e75'
$url64 = 'https://download.airsquirrels.com/AirParrot3/Windows/AirParrot-3.1.7-64.msi'

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
