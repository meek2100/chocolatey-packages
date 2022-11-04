$ErrorActionPreference = 'Stop'
$checksum = 'cc3e08cca2eb6261133873cbb37967ae0419e89ba9b4370202bae5a45e1fd3c6'
$url = 'https://download.airsquirrels.com/Reflector4/Windows/Reflector-4.1.0-32.msi'
$checksum64 = '8552df4fafd297d5ba8b868547ffe1ed55900a93927f9f307e83dd6988e67406'
$url64 = 'https://download.airsquirrels.com/Reflector4/Windows/Reflector-4.1.0-64.msi'

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
