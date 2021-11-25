$ErrorActionPreference = 'Stop';
$checksum = '221036be24e0dc77f541ab6624e0229a9a58ed7b897f3776dd9118dcd0be90f3'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.0.13/xampp-windows-x64-8.0.13-0-VS16-installer.exe'

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
