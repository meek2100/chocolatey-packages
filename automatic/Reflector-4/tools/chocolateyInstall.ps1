$ErrorActionPreference = 'Stop'
$checksum = 'd50b6b3008f6c6ccc549c8b4c490551cf292502fa75bc7b5a95b0d0b01969921'
$url = 'https://download.airsquirrels.com/Reflector4/Windows/Reflector-4.0.0-32.msi'
$checksum64 = 'b410becdd77e4e104fda515f1f6f495df172c4a928db955c4da912dc7a741427'
$url64 = 'https://download.airsquirrels.com/Reflector4/Windows/Reflector-4.0.0-64.msi'

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
