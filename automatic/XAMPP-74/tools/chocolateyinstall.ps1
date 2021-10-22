$ErrorActionPreference = 'Stop';
$checksum = '350ace9a25f2e33eb6cc7ff19d85950d9b67475f23371aa43615183a436835b2'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.4.25/xampp-windows-x64-7.4.25-0-VC15-installer.exe'

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
