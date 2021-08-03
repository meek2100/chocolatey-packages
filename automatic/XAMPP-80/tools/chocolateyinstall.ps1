$ErrorActionPreference = 'Stop';
$checksum = '76d5754484d624ff4585c1426364a29ef539f68d4b5769736f10d6349528da7a'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.0.9/xampp-windows-x64-8.0.9-0-VS16-installer.exe'

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
