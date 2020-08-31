$ErrorActionPreference = 'Stop';
$checksum = 'eb85656b40d1bc52c57e01a64ecb09db6cf9688997a0a8d5362cc7df7bcfc6ab'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.4.8/xampp-windows-x64-7.4.8-0-VC15-installer.exe'

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