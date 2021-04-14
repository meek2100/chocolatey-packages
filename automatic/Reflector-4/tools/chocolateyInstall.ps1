$ErrorActionPreference = 'Stop'
$checksum = '4bf4e01d45437e0971157cda4417d99583d544dcc77a7082ff49bd0b6ef56a61'
$url = 'https://download.airsquirrels.com/Reflector3/Windows/Reflector3.2.0-32.msi'
$checksum64 = '9ee6ec4aa7a47e93bc4310cceba220cd2c082368178d105ba1ec7cef7881d180'
$url64 = 'https://download.airsquirrels.com/Reflector3/Windows/Reflector3.2.0-64.msi'

$packageArgs = @{
  packageName    = 'Reflector-4'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = '/quiet /norestart'
  validExitCodes = @(0)
  softwareName   = 'Reflector 4*'
  checksum       = $checksum
  checksumType   = 'sha256'
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
