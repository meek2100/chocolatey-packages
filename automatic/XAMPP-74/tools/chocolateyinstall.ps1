$ErrorActionPreference = 'Stop';
$checksum = 'ab819bd273b943b2e043906c16ca8616193d4e7eacea52ac383cb86b845742d9'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.4.15/xampp-windows-x64-7.4.15-0-VC15-installer.exe'

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
