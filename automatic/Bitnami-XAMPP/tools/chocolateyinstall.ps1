$ErrorActionPreference = 'Stop';
$checksum = '81f5bdef90836577fc09880d7aecb837915fcb0ddd45c28ef987959f80387ebb'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.4.11/xampp-windows-x64-7.4.11-0-VC15-installer.exe'

$packageArgs = @{
  packageName    = 'Bitnami-XAMPP'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'
  url            = $url
  silentArgs     = "--mode unattended"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'xampp*'
  checksum       = $checksum
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
