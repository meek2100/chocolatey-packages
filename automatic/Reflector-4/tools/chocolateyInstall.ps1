$ErrorActionPreference = 'Stop'
$checksum = '7d92caa550d674ee29bf1a7e75bd9e27da5e6053474fcd3e62bdb8e25be12d04'
$url = 'https://download.airsquirrels.com/Reflector4/Windows/Reflector-4.1.1-32.msi'
$checksum64 = '2f4b9df7617c9a31ea2ed16833ee662c04a873f726b93896cae8a29b6ceb05c8'
$url64 = 'https://download.airsquirrels.com/Reflector4/Windows/Reflector-4.1.1-64.msi'

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
