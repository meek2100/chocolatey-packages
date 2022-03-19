$ErrorActionPreference = 'Stop';
$checksum = '0b6a90fb5be15a611edafb545667d476a4f21192066b0429e058f3d3fcac74fa'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.4.28/xampp-windows-x64-7.4.28-0-VC15-installer.exe'

$packageArgs = @{
  packageName    = 'XAMPP-74'
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
