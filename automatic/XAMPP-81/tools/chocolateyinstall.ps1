$ErrorActionPreference = 'Stop';
$checksum = '1ff7f2cb3d40a18a77d9753cb730325843147c69f9e1ac95d869da935584183d'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.1.10/xampp-windows-x64-8.1.10-0-VS16-installer.exe'

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
