$ErrorActionPreference = 'Stop';
$checksum = 'd9794507e3f319971e27da1679de2d09c7306ee78b0b2445ee118855abec1704'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.3.33/xampp-windows-x64-7.3.33-0-VC15-installer.exe'

$packageArgs = @{
  packageName    = 'XAMPP-73'
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
