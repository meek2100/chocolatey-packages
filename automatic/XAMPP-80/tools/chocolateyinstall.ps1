$ErrorActionPreference = 'Stop';
$checksum = '7a1a8c8eec772c234c1113edf9a5dadd517a45caa5e44b6fb3cf06238a175eee'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.0.8/xampp-windows-x64-8.0.8-0-VS16-installer.exe'

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
