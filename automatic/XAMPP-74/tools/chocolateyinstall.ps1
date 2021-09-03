$ErrorActionPreference = 'Stop';
$checksum = '93bf58939f89e925b92a00a4a9d0ed647332b952e01facf5911283f106f665d7'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.4.23/xampp-windows-x64-7.4.23-0-VC15-installer.exe'

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
