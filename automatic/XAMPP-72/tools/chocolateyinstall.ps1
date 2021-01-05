$ErrorActionPreference = 'Stop';
$checksum = '225d87a17b4c666191b7fb1be0171488ae07b4173977717106adb3d2fdbd52c0'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.2.33/xampp-windows-x64-7.2.33-0-VC15-installer.exe'


$packageArgs = @{
  packageName    = 'XAMPP-72'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'
  url            = $url
  silentArgs     = "--mode unattended"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'xampp*'
  checksum       = $checksum
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
