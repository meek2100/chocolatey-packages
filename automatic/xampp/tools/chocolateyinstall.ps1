$ErrorActionPreference = 'Stop';
$checksum = '6537ff078425dbab04278a1c3bbc457abc78c27c895f1b5d88b04f49f2fbfa52'
$url = 'https://www.apachefriends.org/xampp-files/7.4.6/xampp-windows-x64-7.4.6-0-VC15-installer.exe'

$packageArgs = @{
  packageName    = 'Bitnami-XAMPP'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'
  url            = $url
  silentArgs     = "--mode unattended"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'xampp*'
  checksum       = $checksum
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs