$ErrorActionPreference = 'Stop';
$checksum = '90dc4546df0dc0cad38daaf62ef2c21b4ae47e6f7a2b2dd7b1c64b41edfb669c'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.0.30/xampp-windows-x64-8.0.30-0-VS16-installer.exe'

$packageArgs = @{
  packageName    = 'XAMPP-80'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'
  url            = $url
  silentArgs     = "--mode unattended --launchapps 0"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'xampp*'
  checksum       = $checksum
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
