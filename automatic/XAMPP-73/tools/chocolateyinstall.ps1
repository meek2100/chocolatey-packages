$ErrorActionPreference = 'Stop';
$checksum = '7300972c56e760d055f370183fbbbb314b72c051bfcf3570a1dd455e52d9312d'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.3.27/xampp-windows-x64-7.3.27-0-VC15-installer.exe'

$packageArgs = @{
  packageName    = 'XAMPP-73'
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
