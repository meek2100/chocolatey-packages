$ErrorActionPreference = 'Stop';
$checksum = 'ea3be132739e02a4c5b83014085daa3e1266cdd3f6bcd8f506ab434f37f0f85d'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.1.6/xampp-windows-x64-8.1.6-0-VS16-installer.exe'

$packageArgs = @{
  packageName    = 'XAMPP-81'
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
