$ErrorActionPreference = 'Stop';
$checksum = '2c1e76cd590a076bf54fdd27ed2019cdd7e66304e2031db3cb695f81e690802f'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.2.34/xampp-windows-x64-7.2.34-0-VC15-installer.exe'


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
