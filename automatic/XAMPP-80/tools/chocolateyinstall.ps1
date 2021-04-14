$ErrorActionPreference = 'Stop';
$checksum = '078d3046360911bf90b41852b27dcbb2656c4c101f7cbe9b42dfb1f5671ae7e1'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.0.3/xampp-windows-x64-8.0.3-0-VS16-installer.exe'

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
