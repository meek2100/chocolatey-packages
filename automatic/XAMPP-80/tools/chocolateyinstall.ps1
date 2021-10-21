$ErrorActionPreference = 'Stop';
$checksum = 'c5339fab95da4bf79393348401e82eebbab9df067af5d3e4f6d501e68668dcc3'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.0.12/xampp-windows-x64-8.0.12-0-VS16-installer.exe'

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
