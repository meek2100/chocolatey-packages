$ErrorActionPreference = 'Stop';
$checksum = 'c1c739ca8046a35b5f9db6db639be4ad87d057bde0db29888a4766bc7acd2f2e'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.0.19/xampp-windows-x64-8.0.19-0-VS16-installer.exe'

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
