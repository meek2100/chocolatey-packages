$ErrorActionPreference = 'Stop';
$checksum = '3036cf4eeed3a8a376126aa16556d95d3eb12f1d3fc2f60c1f3a18abb2178810'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.0.23/xampp-windows-x64-8.0.23-0-VS16-installer.exe'

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
