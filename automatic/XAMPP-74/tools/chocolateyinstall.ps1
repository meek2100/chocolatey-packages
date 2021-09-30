$ErrorActionPreference = 'Stop';
$checksum = '71075b85b1cdd8a3599b3c7ee8579ed112de9c2d143b93f511ec51f8f2249006'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.4.24/xampp-windows-x64-7.4.24-0-VC15-installer.exe'

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
