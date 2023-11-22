$ErrorActionPreference = 'Stop';
$checksum = '352d16335e7c83422e0bed4091e6679357ce7663cd164e8fd9d7a77108782a8f'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.1.25/xampp-windows-x64-8.1.25-0-VS16-installer.exe'

$packageArgs = @{
  packageName    = 'XAMPP-81'
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
