$ErrorActionPreference = 'Stop';
$checksum = 'd2faab1fc766d6242e8c9ef5bd27187d307bd623eb56e755e7774ff18d64df9b'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.0.1/xampp-windows-x64-8.0.1-0-VS16-installer.exe'

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
