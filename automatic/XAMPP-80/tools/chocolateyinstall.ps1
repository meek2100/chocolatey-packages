$ErrorActionPreference = 'Stop';
$checksum = '549a915182f282616f052caed92cd5321896cbe78024aa99b09dc195e5525231'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.0.25/xampp-windows-x64-8.0.25-0-VS16-installer.exe'

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
