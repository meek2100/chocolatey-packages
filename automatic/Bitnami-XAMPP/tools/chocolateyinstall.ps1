$ErrorActionPreference = 'Stop';
$checksum = 'a90d097f4c5738ba4706110264222f7b7bc3601781f830d86076a3a0c4764772'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.4.9/xampp-windows-x64-7.4.9-0-VC15-installer.exe'

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
