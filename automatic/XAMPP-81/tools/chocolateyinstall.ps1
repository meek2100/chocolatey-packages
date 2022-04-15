$ErrorActionPreference = 'Stop';
$checksum = 'b2ba3eaa955c22559eaf7e66b7af443954c6d8b66d2b6b9d9bee599fc86f6a4c'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.1.4/xampp-windows-x64-8.1.4-0-VS16-installer.exe'

$packageArgs = @{
  packageName    = 'XAMPP-81'
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
