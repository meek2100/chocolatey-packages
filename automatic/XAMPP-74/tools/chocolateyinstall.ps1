$ErrorActionPreference = 'Stop';
$checksum = '3ac275b4ad6775db28b98ecabae4dd2db5da8330313c4ccf72acfc2c05224446'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.4.16/xampp-windows-x64-7.4.16-0-VC15-installer.exe'

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
