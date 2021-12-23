$ErrorActionPreference = 'Stop';
$checksum = '336ac1440a95b87b545f48ea7706e81a88564a05d18f4e93e7166b9ab90d5a7c'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.4.27/xampp-windows-x64-7.4.27-0-VC15-installer.exe'

$packageArgs = @{
  packageName    = 'XAMPP-74'
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
