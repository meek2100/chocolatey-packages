$ErrorActionPreference = 'Stop';
$checksum = '9936522d8385b7c34ebd4ead06247cacf3eb39da4f3548c19165bcd8aa507da8'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.0.2/xampp-windows-x64-8.0.2-0-VS16-installer.exe'

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
