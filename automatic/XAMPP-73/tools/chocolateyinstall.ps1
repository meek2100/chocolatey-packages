$ErrorActionPreference = 'Stop';
$checksum = 'b3ca7309eed2af6cff8a37f347ecd0d660d416302c59209a50eea9bbc54365aa'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.3.29/xampp-windows-x64-7.3.29-0-VC15-installer.exe'

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
