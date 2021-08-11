$ErrorActionPreference = 'Stop'
$checksum = 'ae78298c7b85bccae0f07e5d15c4f986bf1fb5eb627adf9c9b406a3ae590faec'
$url = 'https://download.airsquirrels.com/Reflector4/Windows/Reflector-4.0.2-32.msi'
$checksum64 = '324ed2d4438d2ca578e5afb9585143a23ae4d6aa8041120cf60ff6e63061959f'
$url64 = 'https://download.airsquirrels.com/Reflector4/Windows/Reflector-4.0.2-64.msi'

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
