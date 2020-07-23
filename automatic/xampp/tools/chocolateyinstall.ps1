$ErrorActionPreference = 'Stop';
$checksum = '514ec454775a243162fd7126618000b4f65bec13b55bf4781b19c7c4699c63d7'
$url = 'https://www.apachefriends.org/xampp-files/7.4.6/xampp-windows-x64-7.4.6-0-VC15-installer.exe'

$packageArgs = @{
  packageName    = 'Bitnami-XAMPP'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'
  url            = $url
  silentArgs     = "--mode unattended"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'xampp*'
  checksum       = $checksum
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs