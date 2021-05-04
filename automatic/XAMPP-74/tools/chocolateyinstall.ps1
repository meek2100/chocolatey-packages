$ErrorActionPreference = 'Stop';
$checksum = '90a98265be03554fc005d0b47723b0380176424fe7967326cb91c1da5207aec4'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.4.18/xampp-windows-x64-7.4.18-0-VC15-installer.exe'

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
