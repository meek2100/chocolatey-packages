$ErrorActionPreference = 'Stop';
$checksum = '0f981808c63952b8bdf7808d1e1d73a1af22ca9a2584df7aab24c62702e84953'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.4.19/xampp-windows-x64-7.4.19-0-VC15-installer.exe'

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
