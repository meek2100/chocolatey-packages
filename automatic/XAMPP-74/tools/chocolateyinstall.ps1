$ErrorActionPreference = 'Stop';
$checksum = '3662d6bf3f0724146ee6a68c596d46e07a53368bb43397027c9039acab0e1df9'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.4.14/xampp-windows-x64-7.4.14-0-VC15-installer.exe'

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
