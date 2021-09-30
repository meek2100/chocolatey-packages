$ErrorActionPreference = 'Stop';
$checksum = '51453a6d8261d59fbdaf886ada1b5db2ecd37729db019c14aaf5ec562c16be1e'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.0.11/xampp-windows-x64-8.0.11-0-VS16-installer.exe'

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
