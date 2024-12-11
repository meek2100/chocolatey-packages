$ErrorActionPreference = 'Stop'
$checksum = 'e200851d60c3a2042bb3543cfd0cfefd7acdeac43aec184a2837af6de1ad59e8'
$url = 'https://download.airsquirrels.com/Reflector4/Windows/Reflector-4.1.2-32.msi'
$checksum64 = 'b5c790b33413733e34d35c6e5b45c61a1c6d268db77de93273ecd6d0dc0d83d0'
$url64 = 'https://download.airsquirrels.com/Reflector4/Windows/Reflector-4.1.2-64.msi'

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
