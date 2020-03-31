$ErrorActionPreference = 'Stop'
$checksum = '9ee6ec4aa7a47e93bc4310cceba220cd2c082368178d105ba1ec7cef7881d180'
$url = 'https://download.airsquirrels.com/Reflector3/Windows/Reflector3.2.0-64.msi'

$packageArgs = @{
  packageName    = 'reflector-3'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'msi'
  url            = $url
  silentArgs     = '/quiet /norestart'
  validExitCodes = @(0)
  softwareName   = 'reflector-3*'
  checksum       = $checksum
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
