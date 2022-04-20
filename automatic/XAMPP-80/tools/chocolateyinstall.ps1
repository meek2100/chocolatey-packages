$ErrorActionPreference = 'Stop';
$checksum = '1f794a653d633cba2d22ea6465e8420d6a6af86c59cf7ee1636479b62401ad13'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.0.18/xampp-windows-x64-8.0.18-0-VS16-installer.exe'

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
