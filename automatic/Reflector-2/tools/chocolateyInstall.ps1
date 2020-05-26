$ErrorActionPreference = 'Stop'
$checksum = 'a45964a4b491f1f2b31579ffbe9dbd30267eb1c7ee72e20f1b84d226f87f26ac'
$url = 'https://download.airsquirrels.com/Reflector2/Windows/Reflector-2.7.5-32.msi'
$checksum64 = 'a48e8c17ea949143951abb247baeb45345eafeb76032c66c3893308bf163aa73'
$url64 = 'https://download.airsquirrels.com/Reflector2/Windows/Reflector-2.7.5-64.msi'

$packageArgs = @{
  packageName    = 'reflector-2'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = '/quiet /norestart'
  validExitCodes = @(0)
  softwareName   = 'reflector-2*'
  checksum       = $checksum
  checksumType   = 'sha256'
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
