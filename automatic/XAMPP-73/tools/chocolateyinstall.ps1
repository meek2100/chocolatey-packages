$ErrorActionPreference = 'Stop';
$checksum = 'f506f444094a572f70cdab7a44ffb0fcd9c9a99e6264df7af6daaa53da4c5f02'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.3.26/xampp-windows-x64-7.3.26-0-VC15-installer.exe'

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
