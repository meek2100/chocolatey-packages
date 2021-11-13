$ErrorActionPreference = 'Stop'
$checksum = '1412b6c36597557729d44b60c599d2a44247e348b594bc6d2bb4c8f357b9d90d'
$url = 'https://download.airsquirrels.com/Reflector4/Windows/Reflector-4.0.3-32.msi'
$checksum64 = 'e270efd46029db20ae96ccaa9975a1d8ee97f380e022914c5be3add05bb0d18e'
$url64 = 'https://download.airsquirrels.com/Reflector4/Windows/Reflector-4.0.3-64.msi'

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
