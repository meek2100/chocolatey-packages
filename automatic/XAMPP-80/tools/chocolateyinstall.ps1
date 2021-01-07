$ErrorActionPreference = 'Stop';
$checksum = '0080f2ee3bc635b3fbe2f0a62ae50b76b9a5f76af7a637fb51b894239687d12f'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.0.0/xampp-windows-x64-8.0.0-0-VS16-installer.exe'

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
