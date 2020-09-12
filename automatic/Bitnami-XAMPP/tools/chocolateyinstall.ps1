$ErrorActionPreference = 'Stop';
$checksum = '9a91dd4f70b504ea4ba398e50fdaa155cf6459f21177162119c5ad635d0cb8ec'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.4.10/xampp-windows-x64-7.4.10-0-VC15-installer.exe'

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
