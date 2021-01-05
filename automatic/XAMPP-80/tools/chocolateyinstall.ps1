$ErrorActionPreference = 'Stop';
$checksum = '665c13f7e3b6a828209d1dd8de9f190225ab44076c955cdfc68aac053e968502'
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
