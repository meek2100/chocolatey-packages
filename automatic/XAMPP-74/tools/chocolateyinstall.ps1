$ErrorActionPreference = 'Stop';
$checksum = 'f4bdec2c75b0cd1b58b4c6ba198167ac86d8b541c1f869fccfe19a5b5dc5bc06'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.4.20/xampp-windows-x64-7.4.20-0-VC15-installer.exe'

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
