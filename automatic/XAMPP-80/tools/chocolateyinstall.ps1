$ErrorActionPreference = 'Stop';
$checksum = '02ba2a0af0c89b450293e2306a4a563115ca3417d4574730d68c5ac2064679b8'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.0.14/xampp-windows-x64-8.0.14-0-VS16-installer.exe'

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
