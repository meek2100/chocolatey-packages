$ErrorActionPreference = 'Stop';
$checksum = '8f198515f346b362092febe2953583ead98430462445ae7be1514eaf4ddb5bea'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.0.17/xampp-windows-x64-8.0.17-0-VS16-installer.exe'

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
