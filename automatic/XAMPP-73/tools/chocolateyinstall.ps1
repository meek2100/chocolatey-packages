$ErrorActionPreference = 'Stop';
$checksum = '7b2ed93d2e42c0b935f716ec2fb38ff024faa885e935b06089b7861e1f46df4c'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.3.28/xampp-windows-x64-7.3.28-0-VC15-installer.exe'

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
