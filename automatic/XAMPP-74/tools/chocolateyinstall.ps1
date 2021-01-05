$ErrorActionPreference = 'Stop';
$checksum = 'd89aaf6d895547d5779eb16b3d083ea3de2788cd2b366620d5a5e8ec07177ceb'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.4.12/xampp-windows-x64-7.4.12-0-VC15-installer.exe'

$packageArgs = @{
  packageName    = 'XAMPP-74'
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
