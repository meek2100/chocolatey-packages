$ErrorActionPreference = 'Stop';
$checksum = '3d42ceb3450e7daaed5b05147f5835900d3280a078ca6161f0574bcd50ef3f7f'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.0.7/xampp-windows-x64-8.0.7-0-VS16-installer.exe'

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
