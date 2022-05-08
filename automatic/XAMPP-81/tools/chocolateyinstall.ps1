$ErrorActionPreference = 'Stop';
$checksum = '2db61fd3d9863fd648a57d2c2488a2502bc27b6902c4b3eab060dc985ddd5418'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.1.5/xampp-windows-x64-8.1.5-0-VS16-installer.exe'

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
