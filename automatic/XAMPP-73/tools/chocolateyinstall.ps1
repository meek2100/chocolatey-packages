$ErrorActionPreference = 'Stop';
$checksum = '6f78906c69e3978abb7d62bf666d43567381323dce5264b4df993650d9d7e3df'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.3.31/xampp-windows-x64-7.3.31-0-VC15-installer.exe'

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
